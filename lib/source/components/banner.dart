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
      height: 400,
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://cdn.pixabay.com/photo/2017/10/30/12/19/sunset-2902357_640.jpg',
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AnimatedTextWidget(
                    text: 'Move Right',
                    moveDirection: MoveDirection.right,
                    enableScaling: false,
                  ),
                  AnimatedTextWidget(
                    text: 'Move Left',
                    moveDirection: MoveDirection.left,
                    enableScaling: false,
                  ),
                ],
              ),
              Spacer(),
              Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(bottom: BorderSide())
                      ),
                      child: AnimatedTextWidget(
                        initialSize: 10,
                        finalSize: 24,
                        text: 'Move Up',
                        enableScaling: true,
                      ),
                    ),
                    AnimatedTextWidget(
                      initialSize: 10,
                      finalSize: 24,
                      text: 'Move Up',
                      enableScaling: true,
                    ),
                    Divider(thickness: 1),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
