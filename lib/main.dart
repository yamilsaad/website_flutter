import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:routemaster/routemaster.dart';

import 'pages/pages.dart';

//Rutas route_master. Se definen las rutas principales y luego se asignan las rutas.
final routes = RouteMap(
    onUnknownRoute: (path) {
      return const MaterialPage(child: Page404());
    },
    routes: {
      '/': (_) => const CupertinoTabPage(child: HomePage(), paths: ['/home']),
      '/home': (_) => const MaterialPage(child: HomePage()),
    });

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Web Site',
          theme: ThemeData(
              useMaterial3: true, colorSchemeSeed: const Color(0xFF053B50)),
          routerDelegate:
              RoutemasterDelegate(routesBuilder: (context) => routes),
          routeInformationParser: const RoutemasterParser(),
        );
      },
    );
  }
}
