import 'package:flutter/material.dart';
import 'dart:async';

import '../constants.dart';

import 'primary_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String id = 'splash';

  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 3),
      () => Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (_, __, ___) => PrimaryScreen(),
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
