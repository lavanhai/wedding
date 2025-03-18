import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/image_animated.dart';
import '../widgets/text_animated.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  InfoState createState() => InfoState();
}

class InfoState extends State<Info> {
  void _handleConfirm() {
    print("OK");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedTextWidget(
          initialSize: 10,
          finalSize: 24,
          text: 'Aasd asd asdas das das das dasd',
          enableScaling: true,
        ),
        Row(
          children: [
            // Expanded(child:  Image.asset('assets/background.jpg', height: 200),),
            Expanded(child: Container(color: Colors.blue, height: 300)),
            Expanded(
              child: Container(
                color: Colors.amber,
                height: 300,
                child: Column(
                  children: [
                    const Spacer(),
                    AnimatedTextWidget(
                      initialSize: 20,
                      text: 'Nhà trai\nÔng: La Văn Hà \nBà: Lê Thị Thành',
                      enableScaling: false,
                      textAlign: TextAlign.center,
                      textStyleDefault: GoogleFonts.yrsa(),
                    ),
                    const Spacer(),
                    AnimatedTextWidget(
                      initialSize: 20,
                      text: 'Chú rể',
                      enableScaling: false,
                      textAlign: TextAlign.center,
                      textStyleDefault: GoogleFonts.yrsa(),
                    ),
                    AnimatedTextWidget(
                      initialSize: 20,
                      text: 'La Hải',
                      enableScaling: false,
                      textAlign: TextAlign.center,
                      textStyleDefault: GoogleFonts.yrsa(),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            // Expanded(child:  Image.asset('assets/background.jpg', height: 200),),
            Expanded(
              child: Container(
                color: Colors.amber,
                height: 300,
                child: Column(
                  children: [
                    const Spacer(),
                    AnimatedTextWidget(
                      initialSize: 20,
                      text: 'Nhà trai\nÔng: La Văn Hà \nBà: Lê Thị Thành',
                      enableScaling: false,
                      textAlign: TextAlign.center,
                      textStyleDefault: GoogleFonts.yrsa(),
                    ),
                    const Spacer(),
                    AnimatedTextWidget(
                      initialSize: 20,
                      text: 'Chú rể',
                      enableScaling: false,
                      textAlign: TextAlign.center,
                      textStyleDefault: GoogleFonts.yrsa(),
                    ),
                    AnimatedTextWidget(
                      initialSize: 20,
                      text: 'La Hải',
                      enableScaling: false,
                      textAlign: TextAlign.center,
                      textStyleDefault: GoogleFonts.yrsa(),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
            Expanded(child: Container(color: Colors.blue, height: 300)),
          ],
        ),
        const SizedBox(width: 100, child: Divider()),
        AnimatedTextWidget(
          initialSize: 10,
          finalSize: 24,
          text: 'Thư mời',
          enableScaling: true,
        ),
        AnimatedTextWidget(
          initialSize: 10,
          finalSize: 24,
          text: 'Tham dự lễ cưới của Ad Gad & Ad Ndf',
          enableScaling: true,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Thay thế Container bằng ảnh bên trái
            Flexible(
              flex: 3,  // flex=2 giúp ảnh giữa chiếm không gian gấp đôi so với ảnh bên cạnh
              child: AnimatedImageWidget(
                imageSource: 'assets/background.jpg', // Đường dẫn ảnh của bạn
                moveDirection: MoveDirection.right, // Di chuyển từ phải sang trái
                duration: const Duration(seconds: 3),
                enableScaling: false, // Cho phép phóng to hình ảnh
              )
            ),
            const SizedBox(width: 10),

            // Ảnh ở giữa, sẽ chiếm không gian nhiều hơn
            Flexible(
              flex: 4,  // flex=2 giúp ảnh giữa chiếm không gian gấp đôi so với ảnh bên cạnh
              child: AnimatedImageWidget(
                imageSource: 'assets/background.jpg', // Đường dẫn ảnh của bạn
                duration: const Duration(seconds: 3),
                enableScaling: false, // Cho phép phóng to hình ảnh
              ),
            ),
            const SizedBox(width: 10),

            // Thay thế Container bằng ảnh bên phải
            Flexible(
              flex: 3,  // flex=2 giúp ảnh giữa chiếm không gian gấp đôi so với ảnh bên cạnh
              child: AnimatedImageWidget(
                imageSource: 'assets/background.jpg', // Đường dẫn ảnh của bạn
                moveDirection: MoveDirection.left, // Di chuyển từ phải sang trái
                duration: const Duration(seconds: 3),
                enableScaling: false, // Cho phép phóng to hình ảnh
              )
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(right: 10, top: 20, bottom: 20),
          padding: EdgeInsets.all(16),
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(150),
              bottomRight: Radius.circular(150),
            ),
          ),
          child: Column(
            children: [
              AnimatedTextWidget(
                initialSize: 30,
                finalSize: 18,
                text: 'Tiệc cưới nhà trai',
                enableScaling: true,
              ),
              const SizedBox(height: 10,),
              IntrinsicHeight(
                child: Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimatedTextWidget(
                        initialSize: 30,
                        text: 'Thứ 7',
                        enableScaling: false,
                      ),
                      VerticalDivider(
                        color: Colors.black,
                        thickness: 1,
                        width: 20,
                      ),
                      AnimatedTextWidget(
                        initialSize: 30,
                        text: '16:30',
                        enableScaling: false
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              AnimatedTextWidget(
                initialSize: 10,
                finalSize: 18,
                text: '05.04.2025',
                enableScaling: true,
              ),
              const SizedBox(height: 10,),
              AnimatedTextWidget(
                initialSize: 10,
                finalSize: 18,
                text: 'Tại tư gia nhà trai',
                enableScaling: true,
              ),
              const SizedBox(height: 10,),
              AnimatedTextWidget(
                initialSize: 10,
                finalSize: 18,
                text: '( Tức ngày 08 tháng 03 năm Ất Tỵ )',
                enableScaling: true,
              ),
              const SizedBox(height: 10,),
              ElevatedButton(onPressed: _handleConfirm, child: Text("Xác nhận tham dự")),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10, top: 20, bottom: 20),
          padding: EdgeInsets.all(16),
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(150),
              bottomLeft: Radius.circular(150),
            ),
          ),
          child: Column(
            children: [
              AnimatedTextWidget(
                initialSize: 30,
                finalSize: 18,
                text: 'Tiệc cưới nhà gái',
                enableScaling: true,
              ),
              const SizedBox(height: 10,),
              IntrinsicHeight(
                child: Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimatedTextWidget(
                        initialSize: 30,
                        text: 'Thứ 7',
                        enableScaling: false,
                      ),
                      VerticalDivider(
                        color: Colors.black,
                        thickness: 1,
                        width: 20,
                      ),
                      AnimatedTextWidget(
                          initialSize: 30,
                          text: '16:30',
                          enableScaling: false
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              AnimatedTextWidget(
                initialSize: 10,
                finalSize: 18,
                text: '05.04.2025',
                enableScaling: true,
              ),
              const SizedBox(height: 10,),
              AnimatedTextWidget(
                initialSize: 10,
                finalSize: 18,
                text: 'Tại tư gia nhà gái',
                enableScaling: true,
              ),
              const SizedBox(height: 10,),
              AnimatedTextWidget(
                initialSize: 10,
                finalSize: 18,
                text: '( Tức ngày 08 tháng 03 năm Ất Tỵ )',
                enableScaling: true,
              ),
              const SizedBox(height: 10,),
              ElevatedButton(onPressed: _handleConfirm, child: Text("Xác nhận tham dự")),
            ],
          ),
        ),
      ],
    );
  }
}
