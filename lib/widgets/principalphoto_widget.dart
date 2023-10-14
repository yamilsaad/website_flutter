import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PhotoPrincipalWidget extends StatefulWidget {
  const PhotoPrincipalWidget({
    super.key,
  });

  @override
  State<PhotoPrincipalWidget> createState() => _PhotoPrincipalWidgetState();
}

class _PhotoPrincipalWidgetState extends State<PhotoPrincipalWidget> {
  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.white,
      Color.fromARGB(255, 238, 141, 173),
      Color.fromARGB(255, 237, 101, 92),
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Stack(children: [
          Container(
            height: 700.h,
            width: 150.w,
            decoration: BoxDecoration(),
            child: ClipRRect(
              child: Image.asset(
                'assets/img/foto_mia.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5.0).dg,
                child: SizedBox(
                  width: 130.w,
                  child: AnimatedTextKit(
                    pause: Duration(milliseconds: 3000),
                    animatedTexts: [
                      ColorizeAnimatedText(
                        'Welcome',
                        textStyle: GoogleFonts.roboto(
                            fontSize: 5.sp, fontWeight: FontWeight.bold),
                        colors: colorizeColors,
                      ),
                      ColorizeAnimatedText(
                        'Soy.Dev',
                        textStyle: GoogleFonts.roboto(
                            fontSize: 5.sp, fontWeight: FontWeight.bold),
                        colors: colorizeColors,
                      ),
                      ColorizeAnimatedText(
                        'Minimalist',
                        textStyle: GoogleFonts.roboto(
                            fontSize: 5.sp, fontWeight: FontWeight.bold),
                        colors: colorizeColors,
                      ),
                    ],
                    isRepeatingAnimation: false,
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                ),
              )
            ],
          ),
        ]),
      ],
    );
  }
}
