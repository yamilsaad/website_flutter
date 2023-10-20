import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website_flutter/responsivos/components/responsive_components.dart';
import 'package:website_flutter/responsivos/layout/principalphoto_tablet.dart';
import 'package:website_flutter/responsivos/widgets/myskills_responsive_tablet.dart';

class ResponsiveTablet extends StatelessWidget {
  const ResponsiveTablet({
    super.key,
  });
  //TODO: Corregir esponsive mobile
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      child: Stack(children: [
        SizedBox(
          height: 1000,
          child: Image.asset(
            'assets/img/soyDevchica.png',
            fit: BoxFit.cover,
          ),
        ),
        const PhotoPrincipalTablet(),
        SizedBox(
          child: Column(children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 25,
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
                                height: 100,
                                width: 270,
                                decoration: BoxDecoration(
                                    color: const Color(0xFF053B50),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Center(
                                    child: Text(
                                      'Soy.Dev',
                                      style: GoogleFonts.roboto(
                                          fontSize: 65,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              back: Container(
                                margin: const EdgeInsets.only(top: 0),
                                height: 100,
                                width: 270,
                                decoration: BoxDecoration(
                                    color: const Color(0xFF053B50),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.all(0.5),
                                  child: Column(
                                    children: [
                                      Center(
                                        child: Text(
                                          'Soy.Dev ❤️',
                                          style: GoogleFonts.roboto(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.red),
                                        ),
                                      ),
                                      const Divider(
                                        height: 2,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Center(
                                          child: Text(
                                            '<Progr@mador> /Des@rrollador de Software/ #Diseñador# 🎨📱❤️',
                                            style: GoogleFonts.roboto(
                                                fontSize: 16,
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
                      const SizedBox(
                        height: 40,
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [MyskillsResponsiveTablet()],
                      ),
                      const SizedBox(
                        height: 130,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 18.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ButtonsComponentTablet(),
                          ],
                        ),
                      ),
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
