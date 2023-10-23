import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Page404 extends StatelessWidget {
  const Page404({super.key});

  @override
  Widget build(BuildContext context) {
    final currentError404pageH = MediaQuery.of(context).size.height;
    final currentError404pageW = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: currentError404pageH,
        width: currentError404pageW,
        child: Stack(children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Error 404',
                  style: GoogleFonts.dancingScript(
                      fontSize: 50.sp, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
