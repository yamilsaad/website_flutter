import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:routemaster/routemaster.dart';

import 'pages/pages.dart';

final routes = RouteMap(routes: {
  '/': (_) => const CupertinoTabPage(child: HomePage(), paths: ['/home']),
  '/home': (_) => const MaterialPage(child: MePage()),
});

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Web Site',
          theme:
              ThemeData(useMaterial3: true, colorSchemeSeed: Color(0xFF053B50)),
          routerDelegate:
              RoutemasterDelegate(routesBuilder: (context) => routes),
          routeInformationParser: const RoutemasterParser(),
        );
      },
    );
  }
}
