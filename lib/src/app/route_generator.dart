import 'package:did_u_make_ur_bed/src/app/screens/landing/landing_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name) {
      case 'landing' :
        return CupertinoPageRoute(builder: (_) => LandingScreen(),
        settings: settings);
    }
  }
}