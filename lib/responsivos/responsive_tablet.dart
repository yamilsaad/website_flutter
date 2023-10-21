import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website_flutter/responsivos/components/responsive_components.dart';
import 'package:website_flutter/responsivos/layout/principalphoto_tablet.dart';
import 'package:website_flutter/responsivos/widgets/myskills_responsive_tablet.dart';

class ResponsiveTablet extends StatelessWidget {
  const ResponsiveTablet({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final currentWithTablet = MediaQuery.of(context).size.width;
    final currentHeithTablet = MediaQuery.of(context).size.height;
    return Container(
      constraints: BoxConstraints(maxHeight: currentHeithTablet),
      height: currentHeithTablet,
      width: currentWithTablet,
      child: Stack(children: [
        SizedBox(
          height: currentHeithTablet,
          child: Image.asset(
            'assets/img/soyDevchica.png',
            fit: BoxFit.cover,
          ),
        ),
        const PhotoPrincipalTablet(),
        SizedBox(
          height: currentHeithTablet,
          child: Column(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 3, left: 15),
                          child: FlipCard(
                            fill: Fill.fillFront,
                            direction: FlipDirection.VERTICAL,
                            side: CardSide.FRONT,
                            front: Container(
                              height: 100.h,
                              width: 90.w,
                              decoration: BoxDecoration(
                                  color: const Color(0xFF053B50),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Center(
                                  child: Text(
                                    'Soy.Dev',
                                    style: GoogleFonts.roboto(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            back: Container(
                              margin: const EdgeInsets.only(top: 0),
                              height: 100.h,
                              width: 90.w,
                              decoration: BoxDecoration(
                                  color: const Color(0xFF053B50),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(0.2).dg,
                                child: ListView(
                                  children: [
                                    Center(
                                      child: Text(
                                        'Soy.Dev ❤️',
                                        style: GoogleFonts.roboto(
                                            fontSize: 8.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red),
                                      ),
                                    ),
                                    Divider(
                                      height: 1.h,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(1.0).dg,
                                      child: Center(
                                        child: Text(
                                          '<Progr@mador> /Des@rrollador de Software/ #Diseñador# 🎨📱❤️',
                                          style: GoogleFonts.roboto(
                                              fontSize: 6.sp,
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
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [MyskillsResponsiveTablet()],
                    ),
                    SizedBox(
                      height: 180.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0).dg,
                          child: const ButtonsComponentTablet(),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ]),
        ),
      ]),
    );
  }
}
