import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      body: MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: const PrincipalPage(),
      ),
      bottomSheet: PopupMenuButton(
        surfaceTintColor: const Color(0xFF053B50),
        shadowColor: const Color(0xFF053B50),
        color: const Color.fromARGB(255, 6, 77, 105),
        tooltip: 'Push Info',
        icon: const Icon(
          Icons.menu_rounded,
          color: Color(0xFF053B50),
          size: 40,
        ),
        itemBuilder: (context) => [
          PopupMenuItem(
            value: 'GitHub',
            child: ListTile(
              hoverColor: const Color(0xFF053B50),
              onLongPress: () {},
              onTap: () {
                _launchURL('https://github.com/yamilsaad');
              },
              leading: Image.asset('assets/img/github.png'),
              title: Text(
                'GitHub',
                style: GoogleFonts.roboto(
                  fontSize: 8.sp,
                  color: Colors.grey.shade400,
                ),
              ),
            ),
          ),
          PopupMenuItem(
            child: ListTile(
              hoverColor: const Color(0xFF053B50),
              onLongPress: () {},
              onTap: () {
                _launchURL(
                    'https://www.linkedin.com/in/yamil-ezequiel-saad-programador-licenciatura-en-inform%C3%A1tica-23b4a263/');
              },
              leading: Image.asset('assets/img/linkedin_icon.png'),
              title: Text(
                'LinkedIn',
                style: GoogleFonts.roboto(
                  fontSize: 8.sp,
                  color: Colors.grey.shade400,
                ),
              ),
            ),
            value: 'LinkedIn',
          ),
          //TODO: Cambiar por whatsapp!
          PopupMenuItem(
            child: ListTile(
              hoverColor: const Color(0xFF053B50),
              onLongPress: () {},
              leading: Image.asset('assets/img/gmail_icon.png'),
              title: Text(
                'Gmail',
                style: GoogleFonts.roboto(
                  fontSize: 8.sp,
                  color: Colors.grey.shade400,
                ),
              ),
            ),
            value: 'Gmail',
          ),
        ],
      ),
    );
  }
}
