import 'package:flutter/material.dart';

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
            opacity: 0.3,
            image: AssetImage('assets/background.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Spacer(),
              AnimatedTextWidget(
                text: 'Hân hạnh được đón tiếp',
                enableScaling: false,
              ),
              ElevatedButton(
                onPressed: _handleOpenQR,
                child: Text('Mừng cưới'),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
