import 'package:flip_carousel/flip_carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../layouts/layout.dart';

class TarjetaTresdeWidget extends StatelessWidget {
  const TarjetaTresdeWidget({super.key});

  static List<dynamic> sampleImages = [
    'assets/img/smarts/geo_smart.png',
    'assets/img/smarts/geo_smart2.png',
    'assets/img/smarts/geo_smart3.png',
    'assets/img/smarts/geo_smart4.png',
    'assets/img/smarts/sfh_smart.png',
    'assets/img/smarts/sfh_smart2.png',
    'assets/img/smarts/ecomerce_smart.jpeg',
    'assets/img/smarts/pelicula_smart.jpeg',
    'assets/img/smarts/pelicula_smart2.jpeg',
    'assets/img/smarts/pelicula_smart3.jpeg',
    'assets/img/smarts/pelicula_smart4.jpeg',
    'assets/img/smarts/pelicula_smart5.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      height: 510.h,
      width: 150.w,
      constraints: BoxConstraints(
        maxHeight: 400.h,
      ),
      //color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2).dg,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
                child: Text(
              'Algunos ejemplos: ',
              style: GoogleFonts.dancingScript(
                  fontSize: 6.sp, fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: 6.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 362.h,
                  width: 82.w,
                  constraints: BoxConstraints(minHeight: 200.h, minWidth: 50.w),
                  child: FlipCarousel(
                    borderRadius: BorderRadius.circular(10),
                    items: sampleImages,
                    height: 360.h,
                    width: 80.w,
                    isAssetImage: false,
                    border:
                        Border.all(width: 3.w, color: const Color(0xFFFFFFFF)),
                    fit: BoxFit.contain,
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
                ),
                SizedBox(
                  width: 5.w,
                ),
                Container(
                  //color: Colors.red,
                  width: 80.w,
                  height: 320.h,
                  child: Image.asset(
                    'assets/img/soyDevchica.png',
                    fit: BoxFit.contain,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
