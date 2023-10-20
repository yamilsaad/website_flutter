import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/component.dart';
import '../layouts/layout.dart';
import '../widgets/widget.dart';

class PrincipalPage extends StatelessWidget {
  const PrincipalPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
        height: 1000,
        child: Image.asset(
          'assets/img/soyDevchica.png',
          fit: BoxFit.contain,
        ),
      ),
      const PhotoPrincipalWidget(),
      SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5.0).dg,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0).dg,
                            child: FlipCard(
                              fill: Fill.fillFront,
                              direction: FlipDirection.VERTICAL,
                              side: CardSide.FRONT,
                              front: Container(
                                margin: const EdgeInsets.only(top: 0).dg,
                                height: 100.h,
                                width: 70.w,
                                constraints: BoxConstraints(maxHeight: 40.dg),
                                decoration: BoxDecoration(
                                    color: const Color(0xFF053B50),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.all(0.5).dg,
                                  child: Center(
                                    child: Text(
                                      'Soy.Dev',
                                      style: GoogleFonts.roboto(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              back: Container(
                                margin: const EdgeInsets.only(top: 0).dg,
                                height: 100.h,
                                width: 70.w,
                                constraints: BoxConstraints(maxHeight: 35.dg),
                                decoration: BoxDecoration(
                                    color: const Color(0xFF053B50),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.all(0.5).dg,
                                  child: Column(
                                    children: [
                                      Center(
                                        child: Text(
                                          'Soy.Dev ❤️',
                                          style: GoogleFonts.roboto(
                                              fontSize: 6.sp,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.red),
                                        ),
                                      ),
                                      Divider(
                                        height: 2.h,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(1.0).dg,
                                        child: Center(
                                          child: Text(
                                            '<Progr@mador> /Des@rrollador de Software/ #Diseñador# 🎨📱❤️',
                                            style: GoogleFonts.roboto(
                                                fontSize: 4.sp,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 600.h,
                          ),
                          const ButtonsComponent(),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [MyskillsWidget()],
              ),
            ],
          )
        ]),
      ),
    ]);
  }
}
