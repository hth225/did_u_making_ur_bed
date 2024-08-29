import 'package:did_u_make_ur_bed/src/app/screens/landing/landing_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class LandingScreen extends CleanView {
  @override
  _LandingScreenState createState() => _LandingScreenState(LandingController());
}

class _LandingScreenState
    extends CleanViewState<LandingScreen, LandingController> {
  _LandingScreenState(controller) : super(controller);

  @override
  // TODO: implement view
  Widget get view {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 12),
                                child: Text(
                                  'Did you make your bed?',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall
                                      ?.copyWith(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Make your bed, Make your day.',
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                              ),
                            ],
                          )),
                      Expanded(flex: 1, child: Container()),
                    ]),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Get Start',
                    style: Theme.of(context).textTheme.labelMedium),
              ),
            )
          ],
        ),
      ),
    );
  }
}
