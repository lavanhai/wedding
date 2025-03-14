import 'package:flutter/material.dart';

import '../widgets/text_animated.dart';

class Album extends StatefulWidget {
  const Album({super.key});

  @override
  AlbumState createState() => AlbumState();
}

class AlbumState extends State<Album> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Album hdng cnhd',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const Expanded(child: Divider(thickness: 1)),
            ],
          ),
          Row(children: [
            Expanded(
              child: Column(children: [
                Container(
                  color: Colors.blue,
                  height: 200,
                  width: 200,
                ),
                const SizedBox(height: 10),
                Container(
                  color: Colors.amber,
                  height: 200,
                  width: 200,
                ),
              ],),
            ),
            const SizedBox(width: 10,),
            Expanded(child: Container(
              margin: EdgeInsets.only(top: 50),
              child: Column(children: [
                Container(
                  color: Colors.amber,
                  height: 200,
                  width: 200,
                ),
                const SizedBox(height: 10),
                Container(
                  color: Colors.blue,
                  height: 200,
                  width: 200,
                ),
              ],),
            )),
          ],)
        ],
      ),
    );
  }
}
