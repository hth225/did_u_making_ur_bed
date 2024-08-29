import 'package:did_u_make_ur_bed/src/app/screens/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class HomeScreen extends CleanView {
  @override
  _HomeScreenState createState() => _HomeScreenState(HomeController());
}

class _HomeScreenState extends CleanViewState<HomeScreen, HomeController> {
  _HomeScreenState(HomeController controller) : super(controller);

  @override
  // TODO: implement view
  Widget get view {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
