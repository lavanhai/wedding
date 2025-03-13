import 'package:flutter/material.dart';

import '../widgets/text_animated.dart';

class BannerView extends StatefulWidget {
  const BannerView({super.key});

  @override
  BannerViewState createState() => BannerViewState();
}

class BannerViewState extends State<BannerView> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 600,
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            opacity: 0.6,
            image: AssetImage(
              'assets/background.jpg',
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Spacer(),
              AnimatedTextWidget(
                text: 'Move Right',
                moveDirection: MoveDirection.right,
                enableScaling: false,
              ),
              AnimatedTextWidget(
                text: 'Move Right',
                moveDirection: MoveDirection.right,
                enableScaling: false,
              ),
              Image.asset('assets/background.jpg', height: 350, width: 300),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedTextWidget(
                      initialSize: 10,
                      finalSize: 24,
                      text: 'Move Up',
                      enableScaling: true,
                    ),
                    VerticalDivider(
                      color: Colors.black,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                      width: 20,
                    ),
                    AnimatedTextWidget(
                      initialSize: 10,
                      finalSize: 24,
                      text: '23.11',
                      enableScaling: true,
                    ),
                    const SizedBox(width: 10,),
                    Column(children: [
                      AnimatedTextWidget(
                        initialSize: 10,
                        finalSize: 24,
                        text: '24',
                        enableScaling: true,
                      ),
                      AnimatedTextWidget(
                        initialSize: 10,
                        finalSize: 24,
                        text: '12',
                        enableScaling: true,
                      ),
                    ],)
                  ],
                ),
              ),
              AnimatedTextWidget(
                initialSize: 10,
                finalSize: 24,
                text: '( Aasd asd asdas das das das dasd)',
                enableScaling: true,
              ),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
