import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SoydevWidget extends StatelessWidget {
  const SoydevWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180.w,
      height: 420.h,
      //color: Colors.amber,
      child: Stack(children: [
        Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Soy.Dev',
                  style: GoogleFonts.roboto(
                      fontSize: 45.sp,
                      color: Colors.indigo.shade100,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  children: [
                    Text(
                      'Soy.Art',
                      style: GoogleFonts.roboto(
                          fontSize: 20.sp,
                          color: Colors.red.shade100,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      'Flutter',
                      style: GoogleFonts.roboto(
                          fontSize: 30.sp,
                          color: Colors.red.shade100,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Soy.Tech',
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp,
                      color: Colors.yellow.shade100,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 70.h,
                ),
                Row(
                  children: [
                    SizedBox(width: 20.w),
                    Text(
                      'Web',
                      style: GoogleFonts.roboto(
                          fontSize: 33.sp,
                          color: Colors.yellow.shade100,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 20.w),
                    Text(
                      'Soy.Team',
                      style: GoogleFonts.roboto(
                          fontSize: 15.sp,
                          color: Colors.yellow.shade100,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            //******************************** */

            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Soy.Tech',
                  style: GoogleFonts.roboto(
                      fontSize: 5.sp,
                      color: Colors.indigo.shade100,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    SizedBox(width: 25.w),
                    Text(
                      'Firebase',
                      style: GoogleFonts.roboto(
                          fontSize: 10.sp,
                          color: Colors.indigo.shade100,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 45.w),
                    Text(
                      'Soy.Team',
                      style: GoogleFonts.roboto(
                          fontSize: 8.sp,
                          color: Colors.indigo.shade100,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
        /*FlipCard(
          fill: Fill.fillBack,
          direction: FlipDirection.HORIZONTAL,
          side: CardSide.FRONT,
          front: Container(
            alignment: Alignment.center,
            width: 90.w,
            height: 420.h,
            decoration: BoxDecoration(
                color: Colors.black12, borderRadius: BorderRadius.circular(10)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                padding: const EdgeInsets.all(2.0).dg,
                child: Center(
                    child: Text(
                  'Crea Hermosos Proyectos con Flutter! ',
                  style: GoogleFonts.roboto(
                      color: Color.fromARGB(255, 6, 80, 109),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
          ),
          back: Container(
            alignment: Alignment.center,
            width: 90.w,
            height: 420.h,
            decoration: BoxDecoration(
                color: Colors.black12, borderRadius: BorderRadius.circular(10)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                padding: const EdgeInsets.all(2.0).dg,
                child: Center(
                    child: Text(
                  'Crea Hermosos Proyectos con Flutter! ',
                  style: GoogleFonts.roboto(
                      color: Color.fromARGB(255, 6, 80, 109),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
          ),
        )*/
      ]),
    );
  }
}