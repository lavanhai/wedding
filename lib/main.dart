import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wedding/source/components/album.dart';
import 'package:wedding/source/components/banner.dart';
import 'package:wedding/source/components/calendar.dart';
import 'package:wedding/source/components/footer.dart';
import 'package:wedding/source/components/info.dart';
import 'package:wedding/source/components/map_view.dart';

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
        appBar: AppBar(title:  Text("Thư mời cưới La Hải & Vân Vân",style: GoogleFonts.alexBrush(),)),
        body:  ListView(children: [
          BannerView(),
          Info(),
          Calendar(),
          MapView(),
          Album(),
          Footer()
        ],)
      ),
    );
  }
}
