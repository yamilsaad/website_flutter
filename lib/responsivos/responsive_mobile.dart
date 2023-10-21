import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website_flutter/responsivos/components/responsive_components.dart';
import 'package:website_flutter/responsivos/layout/principalphoto_mobile.dart';
import 'package:website_flutter/responsivos/widgets/responsive_widgets.dart';

class ResponsiveMobile extends StatelessWidget {
  const ResponsiveMobile({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final currentWithMobile = MediaQuery.of(context).size.width;
    final currentHeithMobile = MediaQuery.of(context).size.height;
    return SizedBox(
      height: currentHeithMobile,
      width: currentWithMobile,
      child: Stack(children: [
        SizedBox(
          height: currentHeithMobile,
          child: Image.asset(
            'assets/img/soyDevchica.png',
            fit: BoxFit.cover,
          ),
        ),
        const PhotoPrincipalMobile(),
        SizedBox(
          child: Column(children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 40.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5).dg,
                        child: FlipCard(
                          fill: Fill.fillFront,
                          direction: FlipDirection.VERTICAL,
                          side: CardSide.FRONT,
                          front: Container(
                            height: 90.h,
                            width: 160.w,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Center(
                                child: Text(
                                  'Soy.Dev',
                                  style: GoogleFonts.roboto(
                                      fontSize: 35.sp,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFF053B50)),
                                ),
                              ),
                            ),
                          ),
                          back: Container(
                            margin: const EdgeInsets.only(top: 0),
                            height: 90.h,
                            width: 160.w,
                            decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(0.5),
                              child: Column(
                                children: [
                                  Center(
                                    child: Text(
                                      'Soy.Dev ❤️',
                                      style: GoogleFonts.roboto(
                                          fontSize: 12.sp,
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
                                            fontSize: 10.sp,
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
                        height: 40.h,
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [MyskillsResponsiveMobile()],
                      ),
                      SizedBox(
                        height: 160.h,
                      ),
                      const ButtonsComponentMobile(),
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}
