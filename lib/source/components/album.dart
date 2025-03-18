import 'package:flutter/material.dart';

import '../widgets/image_animated.dart';
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
                  'Album hình cưới',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const Expanded(child: Divider(thickness: 1)),
            ],
          ),
          Row(children: [
            Expanded(
              child: Column(children: [
                AnimatedImageWidget(
                  imageSource: 'assets/HUY_3350.jpg', // Đường dẫn ảnh của bạn
                  moveDirection: MoveDirection.right, // Di chuyển từ phải sang trái
                  duration: const Duration(seconds: 2),
                  enableScaling: false, // Cho phép phóng to hình ảnh
                ),
                const SizedBox(height: 10),
                AnimatedImageWidget(
                  imageSource: 'assets/HUY_4100.jpg', // Đường dẫn ảnh của bạn
                  moveDirection: MoveDirection.right, // Di chuyển từ phải sang trái
                  duration: const Duration(seconds: 3),
                  enableScaling: false, // Cho phép phóng to hình ảnh
                ),
              ],),
            ),
            const SizedBox(width: 10,),
            Expanded(child: Container(
              margin: EdgeInsets.only(top: 50),
              child: Column(children: [
                AnimatedImageWidget(
                  imageSource: 'assets/HUY_3995.jpg', // Đường dẫn ảnh của bạn
                  moveDirection: MoveDirection.left, // Di chuyển từ phải sang trái
                  duration: const Duration(seconds: 2),
                  enableScaling: false, // Cho phép phóng to hình ảnh
                ),
                const SizedBox(height: 10),
                AnimatedImageWidget(
                  imageSource: 'assets/HUY_4210.jpg', // Đường dẫn ảnh của bạn
                  moveDirection: MoveDirection.left, // Di chuyển từ phải sang trái
                  duration: const Duration(seconds: 3),
                  enableScaling: false, // Cho phép phóng to hình ảnh
                ),
              ],),
            )),
          ],)
        ],
      ),
    );
  }
}
