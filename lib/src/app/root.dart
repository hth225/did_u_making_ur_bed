import 'package:did_u_make_ur_bed/src/app/route_generator.dart';
import 'package:did_u_make_ur_bed/src/app/theme/theme.dart';
import 'package:flutter/material.dart';

class DidYouMakeYourBed extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Did you make your bed?',
      theme: buildLightThemeData(),
      initialRoute: 'landing',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
