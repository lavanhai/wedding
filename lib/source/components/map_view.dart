import 'package:flutter/material.dart';
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
        padding: EdgeInsets.symmetric(vertical: 80, horizontal: 20),
        child: Column(
          children: [
            const Text(
              'Map View',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            _buildLocationRow(true),
            const SizedBox(height: 16),
            _buildLocationRow(false),
          ],
        ),
      ),
    );
  }

  Widget _buildLocationRow(bool isMale) {
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
                      'Location',
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: ElevatedButton(
                      onPressed: () => _handleOpenMap(isMale),
                      child: const Text("Map"),
                    ),
                  ),
                ],
              ),
              const Text(
                '1234, 5th Avenue, New York',
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
