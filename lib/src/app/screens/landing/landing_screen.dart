import 'package:did_u_make_ur_bed/src/app/screens/landing/landing_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class LandingScreen extends View {
  @override
  _LandingScreenState createState() => _LandingScreenState(LandingController());
}

class _LandingScreenState extends ViewState<LandingScreen, LandingController> {
  _LandingScreenState(controller) : super(controller);

  @override
  // TODO: implement view
  Widget get view {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Text(
              'Did you make your bed?',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Get Start', style: Theme.of(context).textTheme.button),
          )
        ],
      ),
    );
  }
}
