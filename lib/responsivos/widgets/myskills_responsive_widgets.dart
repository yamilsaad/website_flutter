import 'package:flutter/material.dart';

import 'package:flip_card/flip_card.dart';
import 'package:google_fonts/google_fonts.dart';

class MyskillsResponsive extends StatelessWidget {
  const MyskillsResponsive({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const colorizeColors2 = [
      Color.fromRGBO(255, 255, 255, 1),
      Colors.grey,
      Colors.blueGrey,
      Colors.black,
    ];

    return FlipCard(
      direction: FlipDirection.HORIZONTAL,
      side: CardSide.FRONT,
      front: Container(
        height: 75,
        width: 155,
        decoration: BoxDecoration(
            color: Colors.black12, borderRadius: BorderRadius.circular(10)),
        child: ClipRRect(
          child: Column(
            children: [
              Center(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 2.0,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello World!',
                            style: GoogleFonts.dancingScript(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'I am Yamil!',
                                style: GoogleFonts.dancingScript(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(width: 4),
                              Icon(
                                Icons.emoji_objects_outlined,
                                color: Colors.white,
                                size: 30,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      back: Container(
        height: 200,
        width: 250,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blueGrey, Colors.black26],
                stops: [0.0, 1.0]),
            borderRadius: BorderRadius.circular(10)),
        child: SingleChildScrollView(
          clipBehavior: Clip.antiAlias,
          scrollDirection: Axis.vertical,
          child: ClipRRect(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      height: 30,
                      width: 40,
                      child: ClipRRect(
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Image.asset(
                            'assets/img/dart_logo.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Dart',
                      style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade300),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      width: 150,
                      height: 100,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            'Dart (originally called Dash) is an open source programming language, developed by Google.',
                            style: GoogleFonts.robotoCondensed(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                      width: 40,
                      child: ClipRRect(
                        child: Image.asset(
                          'assets/img/flutter.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Text(
                      'Flutter',
                      style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade300),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    SizedBox(
                      width: 150,
                      height: 100,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            "Flutter is an extraordinary technology. Its multiplatform quality allows you to create beautiful projects, from a spectacular Mobile App to a Web page like the one you are seeing! Let's create something wonderful together!",
                            style: GoogleFonts.robotoCondensed(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                      width: 40,
                      child: ClipRRect(
                        child: Image.asset(
                          'assets/img/firebase.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Text(
                      'Firebase',
                      style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade300),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Container(
                      width: 150,
                      height: 100,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Firebase is a platform acquired by Google located in the cloud, integrated with Google Cloud Platform, which uses a set of tools for the creation and synchronization of projects that will be provided with high quality, making possible the growth of the number of users and also giving results. to obtain greater monetization.',
                            style: GoogleFonts.robotoCondensed(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 7,
                    ),
                    Container(
                      height: 30,
                      width: 75,
                      child: ClipRRect(
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Image.asset(
                            'assets/img/cubit_logo.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Container(
                      width: 150,
                      height: 100,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'A cubit state handler is a type of state handler used to manage the state of a Flutter application. Cubits are a simplified version of pads, offering an easier way to manage the state of an application.',
                            style: GoogleFonts.robotoCondensed(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        height: 30,
                        width: 75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/img/flame_mas_flutter.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 150,
                      height: 100,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Flame is a modular Flutter game engine that provides a complete set of out-of-the-box solutions for gaming. Take advantage of the powerful infrastructure provided by Flutter but simplify the code you need to build your projects.',
                            style: GoogleFonts.robotoCondensed(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
