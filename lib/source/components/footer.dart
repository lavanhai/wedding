import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/text_animated.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  FooterState createState() => FooterState();
}

class FooterState extends State<Footer> {
  void _handleOpenQR  (){

  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            opacity: 0.1,
            image: AssetImage('assets/vecteezy_heart.png'),
            // fit: BoxFit.fitHeight,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Spacer(),
              AnimatedTextWidget(
                initialSize: 40,
                text: 'Hân hạnh được đón tiếp',
                enableScaling: false,
                textStyleDefault: GoogleFonts.meaCulpa(),
              ),
              ElevatedButton(
                onPressed: _handleOpenQR,
                child: Text(
                  'Xác nhận tham dự',
                  style:  GoogleFonts.playfair( textStyle: TextStyle(fontSize: 14)),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
