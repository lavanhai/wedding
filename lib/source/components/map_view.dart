import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class MapView extends StatefulWidget {
  const MapView({super.key});

  @override
  MapViewState createState() => MapViewState();
}

class MapViewState extends State<MapView> {
  Future<void> _handleOpenMap(bool isMale) async {
    await launchUrl(
      Uri.parse(
        isMale
            ? "https://maps.app.goo.gl/15iYQNfo2NrGgcEB8"
            : "https://maps.app.goo.gl/6Xq6GHrr2taWL9ZG6",
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(16),
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent.withAlpha(50),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(200),
          topRight: Radius.circular(200),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 60, horizontal: 20),
        child: Column(
          children: [
             Text(
              'Địa điểm tổ chức',
              style:  GoogleFonts.vollkorn( textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ),
            _buildLocationRow(isMale: true, title: "Nhà trai", address: "Bắc Phú - Sóc Sơn - Hà Nội"),
            const SizedBox(height: 16),
            _buildLocationRow(isMale: true, title: "Nhà gái", address: "Văn Hội - Ninh Giang - Hải Dương"),
          ],
        ),
      ),
    );
  }

  Widget _buildLocationRow({required bool isMale, required String title, required String address}) {
    return Row(
      children: [
        Image.asset('assets/location.png', height: 40, width: 40),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style:  GoogleFonts.protestGuerrilla( textStyle: TextStyle(fontSize: 18)),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: ElevatedButton(
                      onPressed: () => _handleOpenMap(isMale),
                      child: Text(
                        'Chỉ đường',
                        style:  GoogleFonts.playfair( textStyle: TextStyle(fontSize: 14)),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                address,
                style:  GoogleFonts.markaziText( textStyle: TextStyle(fontSize: 18)),
              )
            ],
          ),
        ),
      ],
    );
  }
}
