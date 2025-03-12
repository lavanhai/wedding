import 'package:flutter/material.dart';
import 'package:wedding/source/components/banner.dart';
import 'package:wedding/source/widgets/text_animated.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Animated Text Example")),
        body:  ListView(children: [
          BannerView()
        ],)
      ),
    );
  }
}
