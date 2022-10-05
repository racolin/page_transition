import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_route/fade_page_route.dart';
import 'package:page_transition/page_route/rocale_page_route.dart';
import 'package:page_transition/page_route/rotation_page_route.dart';
import 'package:page_transition/page_route/scale_page_route.dart';
import 'package:page_transition/page_route/slide_page_route.dart';
import 'package:page_transition/screen/blue_screen.dart';
import 'package:page_transition/screen/green_screen.dart';
import 'package:page_transition/screen/yellow_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.pink),
      home: const BlueScreen(),
      // routes: {
      //   BlueScreen.route: (context) => const BlueScreen(),
      //   YellowScreen.route: (context) => const YellowScreen(),
      //   GreenScreen.route: (context) => const GreenScreen(),
      // },
      onGenerateRoute: (settings) {
        if (settings.name == null) {
          return SlidePageRoute(enter: const BlueScreen());
        }
        switch (settings.name) {
          case BlueScreen.route:
            return RocalePageRoute(enter: const BlueScreen());
          case YellowScreen.route:
            return SlidePageRoute(enter: const YellowScreen());
          case GreenScreen.route:
            return SlidePageRoute(enter: const GreenScreen());
        }
        return SlidePageRoute(enter: const BlueScreen());
      },
    );
  }
}
