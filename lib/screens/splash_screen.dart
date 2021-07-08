import 'package:flutter/material.dart';
import 'dart:async';

import '../constants.dart';

import './enter_data_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String id = 'splash';

  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 8),
      () => Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (_, __, ___) => DataEntry(),
          transitionDuration: Duration(seconds: 5),
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColorPeach,
        title: Text(
          'POOLHOUSE',
          style: kTextStyleAppBar,
        ),
      ),
      body: Container(
        child: Center(
          child: Hero(
            tag: 'splash',
            child: Image.asset('assets/phSplash.png'),
          ),
        ),
      ),
    );
  }
}
