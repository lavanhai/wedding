import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/text_animated.dart';

class BannerView extends StatefulWidget {
  const BannerView({super.key});

  @override
  BannerViewState createState() => BannerViewState();
}

class BannerViewState extends State<BannerView> {
  @override
  Widget build(BuildContext context) {
    return (Column(
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              opacity: 0.3,
              scale: 1.3,
              image: AssetImage('assets/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 50,),
              AnimatedTextWidget(
                initialSize: 30,
                finalSize: 80,
                text: 'SAVE THE DATE',
                duration: Duration(seconds: 3),
                moveDirection: MoveDirection.down,
                enableScaling: false,
                textStyleDefault: GoogleFonts.literata(),
              ),
              const SizedBox(height: 20),
              AnimatedTextWidget(
                text: 'La Hải & Vân Vân',
                duration: Duration(seconds: 3),
                initialSize: 30,
                finalSize: 50,
                moveDirection: MoveDirection.down,
                enableScaling: false,
                textStyleDefault: GoogleFonts.greatVibes(),
              ),
              Padding(
                padding: const EdgeInsets.all(24),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.orangeAccent.shade100,
                      width: 2,
                    ),
                  ),
                  child: Image.asset(
                    'assets/background.jpg',
                    width: double.infinity, // Chiều rộng bằng màn hình
                    fit: BoxFit.contain, // Đảm bảo ảnh không bị biến dạng
                  ),
                ),
              ),
              IntrinsicHeight(
                child: Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          AnimatedTextWidget(
                            initialSize: 30,
                            text: '11:00',
                            enableScaling: false,
                            textStyleDefault: GoogleFonts.alata(),
                          ),
                          AnimatedTextWidget(
                            initialSize: 30,
                            text: 'Chủ nhật',
                            enableScaling: false,
                            textStyleDefault: GoogleFonts.alexBrush(),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        color: Colors.black,
                        thickness: 1,
                        width: 20,
                      ),
                      AnimatedTextWidget(
                        initialSize: 30,
                        text: '06:04',
                        enableScaling: false,
                        textStyleDefault: GoogleFonts.yrsa(),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        children: [
                          AnimatedTextWidget(
                            initialSize: 30,
                            text: '20',
                            enableScaling: false,
                            textStyleDefault: GoogleFonts.tiltPrism(),
                          ),
                          AnimatedTextWidget(
                            initialSize: 30,
                            text: '25',
                            enableScaling: false,
                            textStyleDefault: GoogleFonts.tiltPrism(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              AnimatedTextWidget(
                initialSize: 16,
                text: '( Ngày mùng 9 tháng 3 năm Ất Tỵ )',
                enableScaling: false,
                textStyleDefault: GoogleFonts.playfair(),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
