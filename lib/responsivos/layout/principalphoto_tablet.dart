import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PhotoPrincipalTablet extends StatefulWidget {
  const PhotoPrincipalTablet({Key? key}) : super(key: key);

  @override
  State<PhotoPrincipalTablet> createState() => _PhotoPrincipalWidgetState();
}

class _PhotoPrincipalWidgetState extends State<PhotoPrincipalTablet>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      animationBehavior: AnimationBehavior.normal,
      vsync: this,
    );

    _animation = Tween<double>(
      begin: 1.0,
      end: 0.0,
    ).animate(_controller);

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    const _colorizeColors = [
      Colors.white,
      Color.fromARGB(255, 238, 141, 173),
      Color.fromARGB(255, 237, 101, 92),
      Colors.yellow,
      Colors.red,
    ];

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(480 * _animation.value, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                children: [
                  Container(
                    height: 820,
                    width: 480,
                    decoration: BoxDecoration(),
                    child: ClipRRect(
                      child: Image.asset(
                        'assets/img/fotomia_reducida.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SizedBox(
                          width: 130,
                          child: AnimatedTextKit(
                            pause: Duration(milliseconds: 3000),
                            animatedTexts: [
                              ColorizeAnimatedText(
                                'Welcome',
                                textStyle: GoogleFonts.roboto(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                                colors: _colorizeColors,
                              ),
                              ColorizeAnimatedText(
                                'Soy.Dev',
                                textStyle: GoogleFonts.roboto(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                                colors: _colorizeColors,
                              ),
                              ColorizeAnimatedText(
                                'Minimalist',
                                textStyle: GoogleFonts.roboto(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                                colors: _colorizeColors,
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
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
