import 'package:flutter/material.dart';

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
            Expanded(child: Container(color: Colors.amber, height: 300)),
          ],
        ),
        Row(
          children: [
            // Expanded(child:  Image.asset('assets/background.jpg', height: 200),),
            Expanded(child: Container(color: Colors.amber, height: 300)),
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
            // Expanded(child:  Image.asset('assets/background.jpg', height: 200),),
            Expanded(child: Container(color: Colors.amber, height: 200)),
            const SizedBox(width: 10),
            Expanded(child: Container(color: Colors.blue, height: 300)),
            const SizedBox(width: 10),
            Expanded(child: Container(color: Colors.amber, height: 200)),
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
