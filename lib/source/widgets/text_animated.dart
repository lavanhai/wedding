import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
enum MoveDirection { left, right, down }

/// Widget có thể tái sử dụng cho hiệu ứng chữ động
class AnimatedTextWidget extends StatefulWidget {
  final String text;
  final double initialSize;
  final double finalSize;
  final Duration duration;
  final TextStyle textStyle;
  final TextStyle? textStyleDefault;
  final MoveDirection? moveDirection;
  final TextAlign? textAlign;
  final bool enableScaling; // Cho phép phóng to chữ hay không

  const AnimatedTextWidget({
    super.key,
    required this.text,
    this.initialSize = 20,
    this.finalSize = 40,
    this.duration = const Duration(seconds: 2),
    this.textStyle = const TextStyle(color: Colors.black),
    this.textStyleDefault,
    this.textAlign,
    this.moveDirection, // Mặc định chạy sang trái
    this.enableScaling = false, // Mặc định ko phóng to
  });

  @override
  State<AnimatedTextWidget> createState() => _AnimatedTextWidgetState();
}

class _AnimatedTextWidgetState extends State<AnimatedTextWidget>
    with SingleTickerProviderStateMixin {
  bool isExpanded = false;
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    // Tạo animation controller
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );

    // Xác định hướng di chuyển
    Offset beginOffset;
    switch (widget.moveDirection) {
      case MoveDirection.left:
        beginOffset = const Offset(1, 0); // Bắt đầu từ bên phải
        break;
      case MoveDirection.right:
        beginOffset = const Offset(-1, 0); // Bắt đầu từ bên trái
        break;
      case MoveDirection.down:
        beginOffset = const Offset(0, -1); // Bắt đầu từ trên xuống
        break;
      default:
        beginOffset = Offset.zero; // Mặc định ở giữa, không có animation di chuyển
        break;
      }

    // Tạo animation vị trí
    _animation = Tween<Offset>(begin: beginOffset, end: Offset.zero)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    // Kích hoạt animation sau khi widget được load
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        isExpanded = true;
      });
      _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: AnimatedDefaultTextStyle(
        duration: widget.enableScaling ? widget.duration : Duration.zero, // Chỉ phóng to nếu enableScaling = true
        curve: Curves.easeOut,
        style: widget.textStyle.copyWith(
          fontSize: widget.enableScaling
              ? (isExpanded ? widget.finalSize : widget.initialSize)
              : widget.initialSize, // Giữ nguyên size nếu không phóng to
        ),
        child: Text(
          widget.text,
          textAlign: widget.textAlign,
          style: widget.textStyleDefault ?? GoogleFonts.carattere(), // Có thể thay đổi font
        ),
      ),
    );
  }
}
