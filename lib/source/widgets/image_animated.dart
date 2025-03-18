import 'package:flutter/material.dart';
import 'package:wedding/source/widgets/text_animated.dart';

/// Widget có thể tái sử dụng cho hiệu ứng hình ảnh động
class AnimatedImageWidget extends StatefulWidget {
  final String imageSource;
  final Duration duration;
  final MoveDirection? moveDirection;
  final bool enableScaling; // Cho phép phóng to hình ảnh hay không

  const AnimatedImageWidget({
    super.key,
    required this.imageSource,
    this.duration = const Duration(seconds: 2),
    this.moveDirection,
    this.enableScaling = false, // Mặc định không phóng to
  });

  @override
  State<AnimatedImageWidget> createState() => _AnimatedImageWidgetState();
}

class _AnimatedImageWidgetState extends State<AnimatedImageWidget>
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
        beginOffset = const Offset(0.3, 0); // Bắt đầu từ bên phải
        break;
      case MoveDirection.right:
        beginOffset = const Offset(-0.3, 0); // Bắt đầu từ bên trái
        break;
      case MoveDirection.down:
        beginOffset = const Offset(0, -0.3); // Bắt đầu từ trên xuống
        break;
      default:
        beginOffset = Offset.zero; // Mặc định không di chuyển
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
      child: AnimatedContainer(
        duration: widget.enableScaling ? widget.duration : Duration.zero, // Chỉ phóng to nếu enableScaling = true
        curve: Curves.easeOut,
        // width: widget.enableScaling
        //     ? (isExpanded ? MediaQuery.of(context).size.width * 0.5 : MediaQuery.of(context).size.width * 0.3)
        //     : MediaQuery.of(context).size.width * 0.3, // Kích thước cố định ban đầu
        // height: widget.enableScaling
        //     ? (isExpanded ? MediaQuery.of(context).size.height * 0.3 : MediaQuery.of(context).size.height * 0.2)
        //     : MediaQuery.of(context).size.height * 0.2, // Kích thước cố định ban đầu
        child: Image.asset(
          widget.imageSource,
          fit: BoxFit.contain, // Đảm bảo ảnh vừa với không gian
        ),
      ),
    );
  }
}