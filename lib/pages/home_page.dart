import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          //height: MediaQuery.of(context).size.height - kToolbarHeight,
          child: PrincipalPage(),
        ),
      ),
      bottomSheet: PopupMenuButton(
          surfaceTintColor: Color(0xFF053B50),
          shadowColor: Color(0xFF053B50),
          color: Color.fromARGB(255, 6, 77, 105),
          tooltip: 'Push Info',
          icon: Icon(
            Icons.menu_rounded,
            color: Color(0xFF053B50),
            size: 40,
          ),
          itemBuilder: (context) => [
                PopupMenuItem(
                  child: ListTile(
                    hoverColor: Color(0xFF053B50),
                    onLongPress: () {},
                    leading: Image.asset('assets/img/github.png'),
                    title: Text(
                      'GitHub',
                      style: GoogleFonts.roboto(
                          fontSize: 8.sp, color: Colors.grey.shade400),
                    ),
                  ),
                  value: 'GitHub',
                ),
                PopupMenuItem(
                  child: ListTile(
                    hoverColor: Color(0xFF053B50),
                    onLongPress: () {},
                    leading: Image.asset('assets/img/linkedin_icon.png'),
                    title: Text(
                      'Linkedin',
                      style: GoogleFonts.roboto(
                          fontSize: 8.sp, color: Colors.grey.shade400),
                    ),
                  ),
                  value: 'GitHub',
                ),
                PopupMenuItem(
                  child: ListTile(
                    hoverColor: Color(0xFF053B50),
                    onLongPress: () {},
                    leading: Image.asset('assets/img/gmail_icon.png'),
                    title: Text(
                      'Gmail',
                      style: GoogleFonts.roboto(
                          fontSize: 8.sp, color: Colors.grey.shade400),
                    ),
                  ),
                  value: 'GitHub',
                ),
              ]),
    );
  }
}
