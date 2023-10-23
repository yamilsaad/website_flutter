import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website_flutter/responsivos/responsivo.dart';
import 'package:website_flutter/responsivos/responsivo_layout.dart';

import 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();

    // Activa el temporizador para mostrar la imagen de carga durante 2 segundos
    Timer(const Duration(seconds: 3), () {
      setState(() {
        _isLoading = false; // Oculta la imagen de carga después de 2 segundos
      });
    });
  }

  Future<void> _launchURL(String url) async {
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void enviarCorreo() async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'yamilsaad00@gmail.com',
      query: 'subject=Reporta&body=Detalhe aqui qual bug voce encontrou: ',
    );
    String url = params.toString();
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      debugPrint('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      body: _isLoading
          ? Center(
              child: Image.asset(
                'assets/img/loading.gif',
                width: 200.w,
                height: 200.h,
              ),
            )
          : MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaleFactor: 1.0,
              ),
              child: const ResponsiveLayout(
                desktopScaffold: ResponsiveDesktop(),
                mobileScaffold: ResponsiveMobile(),
                tabletScaffold: ResponsiveTablet(),
              ),
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
                  fontSize: 18,
                  color: Colors.grey.shade400,
                ),
              ),
            ),
          ),
          PopupMenuItem(
            value: 'LinkedIn',
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
                  fontSize: 18,
                  color: Colors.grey.shade400,
                ),
              ),
            ),
          ),
          PopupMenuItem(
            value: 'Gmail',
            child: ListTile(
              hoverColor: const Color(0xFF053B50),
              onLongPress: () {},
              onTap: () {
                enviarCorreo();
              },
              leading: Image.asset('assets/img/gmail_icon.png'),
              title: Text(
                'Gmail',
                style: GoogleFonts.roboto(
                  fontSize: 18,
                  color: Colors.grey.shade400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
