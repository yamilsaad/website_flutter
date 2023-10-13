import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MyskillsWidget extends StatelessWidget {
  const MyskillsWidget({
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
        height: 55.h,
        width: 125.w,
        constraints: BoxConstraints(maxHeight: 18.dg),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF053B50),
                  const Color.fromARGB(255, 71, 81, 88)
                ],
                stops: [
                  0.0,
                  1.0
                ]),
            borderRadius: BorderRadius.circular(10)),
        child: ClipRRect(
          child: Column(
            children: [
              Center(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 2.0,
                      ).dg,
                      child: Text(
                        'Hello World! I am Yamil!',
                        style: GoogleFonts.dancingScript(
                          color: Colors.white,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(width: 5.w),
                    Icon(
                      Icons.favorite_outlined,
                      color: Colors.white,
                      size: 8.dg,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      back: Container(
        height: 300.h,
        width: 250.w,
        constraints: BoxConstraints(maxHeight: 200.dg, maxWidth: 150.w),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.blueGrey,
                  const Color.fromARGB(255, 71, 81, 88)
                ],
                stops: [
                  0.0,
                  1.0
                ]),
            borderRadius: BorderRadius.circular(10)),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: ClipRRect(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 2.w,
                    ),
                    Container(
                      height: 30.dg,
                      width: 40.w,
                      child: ClipRRect(
                        child: Padding(
                          padding: const EdgeInsets.all(2.0).dg,
                          child: Image.asset(
                            'assets/img/dart_logo.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      'Dart',
                      style: GoogleFonts.roboto(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade300),
                    ),
                    SizedBox(
                      width: 18.w,
                    ),
                    Container(
                      width: 60.w,
                      height: 80.h,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Text(
                          'Flutter es una tecnología extraordinara. Su cualidad multiplataforma te permite crear hermosos proyectos, desde una espectacular App Móvil, hasta una pagina Web como la questás viendo! Creemos juntos algo maravilloso!',
                          style: GoogleFonts.robotoCondensed(
                            color: Colors.white,
                            fontSize: 4.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 1.dg,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 30.dg,
                      width: 40.w,
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
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade300),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Container(
                      width: 60.w,
                      height: 80.h,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Text(
                          'Flutter es una tecnología extraordinara. Su cualidad multiplataforma te permite crear hermosos proyectos, desde una espectacular App Móvil, hasta una pagina Web como la questás viendo! Creemos juntos algo maravilloso!',
                          style: GoogleFonts.robotoCondensed(
                            color: Colors.white,
                            fontSize: 4.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 1.dg,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 30.dg,
                      width: 40.w,
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
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade300),
                    ),
                    SizedBox(
                      width: 7.w,
                    ),
                    Container(
                      width: 60.w,
                      height: 80.h,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Text(
                          'Flutter es una tecnología extraordinara. Su cualidad multiplataforma te permite crear hermosos proyectos, desde una espectacular App Móvil, hasta una pagina Web como la questás viendo! Creemos juntos algo maravilloso!',
                          style: GoogleFonts.robotoCondensed(
                            color: Colors.white,
                            fontSize: 4.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 1.dg,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 2.w,
                    ),
                    Container(
                      height: 30.dg,
                      width: 40.w,
                      child: ClipRRect(
                        child: Padding(
                          padding: const EdgeInsets.all(2.0).dg,
                          child: Image.asset(
                            'assets/img/cubit_logo.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      'Cubit',
                      style: GoogleFonts.roboto(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade300),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Container(
                      width: 60.w,
                      height: 80.h,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Text(
                          'Flutter es una tecnología extraordinara. Su cualidad multiplataforma te permite crear hermosos proyectos, desde una espectacular App Móvil, hasta una pagina Web como la questás viendo! Creemos juntos algo maravilloso!',
                          style: GoogleFonts.robotoCondensed(
                            color: Colors.white,
                            fontSize: 4.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 1.dg,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 2.w,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0).dg,
                      child: Container(
                        height: 30.dg,
                        width: 40.w,
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
                      width: 5.w,
                    ),
                    Text(
                      'Flame',
                      style: GoogleFonts.roboto(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade300),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      width: 60.w,
                      height: 80.h,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Text(
                          'Flutter es una tecnología extraordinara. Su cualidad multiplataforma te permite crear hermosos proyectos, desde una espectacular App Móvil, hasta una pagina Web como la questás viendo! Creemos juntos algo maravilloso!',
                          style: GoogleFonts.robotoCondensed(
                            color: Colors.white,
                            fontSize: 4.sp,
                            fontWeight: FontWeight.w500,
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
