import 'package:flip_carousel/flip_carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TarjetaTresdeWidget extends StatelessWidget {
  const TarjetaTresdeWidget({super.key});

  static List<dynamic> sampleImages = [
    'https://i.ibb.co/QYdQHBw/batman2.jpg',
    'https://i.ibb.co/vwhykYp/spider1.jpg',
    'https://i.ibb.co/H4VrQS4/spider2.jpg',
    Container(color: Colors.amber, child: const FlutterLogo()),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlipCarousel(
        items: sampleImages,
        height: 200.h,
        width: 100.w,
        isAssetImage: false,
        border: Border.all(width: 5, color: const Color(0xFFFFFFFF)),
        fit: BoxFit.cover,
        perspectiveFactor: 0.002,
        layersGap: 30,
        transitionDuration: const Duration(milliseconds: 400),
        onChange: (int pageIndex) {
          print(pageIndex);
        },
        onTap: () {
          print("taped");
        },
      ),
    );
  }
}
