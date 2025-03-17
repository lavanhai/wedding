import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          text: 'Aasd asd',
          enableScaling: true,
        ),
        AnimatedTextWidget(
          initialSize: 10,
          finalSize: 24,
          text: 'Aasd asd asdas das das das dasd',
          enableScaling: true,
        ),
        Row(
          children: [
            // Thay thế Container bằng ảnh bên trái
            Flexible(
              flex: 3,  // flex=2 giúp ảnh giữa chiếm không gian gấp đôi so với ảnh bên cạnh
              child: Image.asset(
                'assets/HUY_3295.jpg', // Đường dẫn ảnh của bạn
                fit: BoxFit.cover,     // Đảm bảo ảnh vừa với không gian
              ),
            ),
            const SizedBox(width: 10),

            // Ảnh ở giữa, sẽ chiếm không gian nhiều hơn
            Flexible(
              flex: 4,  // flex=2 giúp ảnh giữa chiếm không gian gấp đôi so với ảnh bên cạnh
              child: Image.asset(
                'assets/HUY_3295.jpg', // Đường dẫn ảnh của bạn
                fit: BoxFit.cover,     // Đảm bảo ảnh vừa với không gian
              ),
            ),
            const SizedBox(width: 10),

            // Thay thế Container bằng ảnh bên phải
            Flexible(
              flex: 3,  // flex=2 giúp ảnh giữa chiếm không gian gấp đôi so với ảnh bên cạnh
              child: Image.asset(
                'assets/HUY_3295.jpg', // Đường dẫn ảnh của bạn
                fit: BoxFit.cover,     // Đảm bảo ảnh vừa với không gian
              ),
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
              topRight: Radius.circular(100),
              bottomRight: Radius.circular(100),
            ),
          ),
          child: Column(
            children: [
              AnimatedTextWidget(
                initialSize: 10,
                finalSize: 18,
                text: 'Aasd asd asdas ',
                enableScaling: true,
              ),
              AnimatedTextWidget(
                initialSize: 10,
                finalSize: 18,
                text: 'Aasd asd asdas ',
                enableScaling: true,
              ),
              AnimatedTextWidget(
                initialSize: 10,
                finalSize: 18,
                text: 'Aasd asd asdas ',
                enableScaling: true,
              ),
              AnimatedTextWidget(
                initialSize: 10,
                finalSize: 18,
                text: 'Aasd asd asdas ',
                enableScaling: true,
              ),
              AnimatedTextWidget(
                initialSize: 10,
                finalSize: 18,
                text: 'Aasd asd asdas ',
                enableScaling: true,
              ),
              ElevatedButton(onPressed: _handleConfirm, child: Text("OK")),
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
              topLeft: Radius.circular(100),
              bottomLeft: Radius.circular(100),
            ),
          ),
          child: Column(
            children: [
              AnimatedTextWidget(
                initialSize: 10,
                finalSize: 18,
                text: 'Aasd asd asdas ',
                enableScaling: true,
              ),
              AnimatedTextWidget(
                initialSize: 10,
                finalSize: 18,
                text: 'Aasd asd asdas ',
                enableScaling: true,
              ),
              AnimatedTextWidget(
                initialSize: 10,
                finalSize: 18,
                text: 'Aasd asd asdas ',
                enableScaling: true,
              ),
              AnimatedTextWidget(
                initialSize: 10,
                finalSize: 18,
                text: 'Aasd asd asdas ',
                enableScaling: true,
              ),
              AnimatedTextWidget(
                initialSize: 10,
                finalSize: 18,
                text: 'Aasd asd asdas ',
                enableScaling: true,
              ),
              ElevatedButton(onPressed: _handleConfirm, child: Text("OK")),
            ],
          ),
        ),
      ],
    );
  }
}
