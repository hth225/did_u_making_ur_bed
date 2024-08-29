import 'package:did_u_make_ur_bed/src/app/presentation/home/home_screen.dart';
import 'package:did_u_make_ur_bed/src/app/presentation/landing/landing_screen.dart';
import 'package:flutter/cupertino.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'landing':
        return CupertinoPageRoute(
            builder: (_) => LandingScreen(), settings: settings);
      case 'home':
        return CupertinoPageRoute(
            builder: (_) => HomeScreen(), settings: settings);
      default:
        return CupertinoPageRoute(builder: (BuildContext context) {
          // TODO : Page not found
          return Container();
        });
    }
  }
}
