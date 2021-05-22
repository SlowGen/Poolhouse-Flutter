import 'package:flutter/material.dart';
import '../constants.dart';

class DataEntry extends StatefulWidget {
  static const String id = 'data';

  @override
  _DataEntryState createState() => _DataEntryState();
}

class _DataEntryState extends State<DataEntry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'POOLHOUSE',
          style: kTextStyleWhite,
        ),
      ),
      body: Column(children: [
        Center(
          child: Hero(
            child: Image.asset(
              'assets/splash.png',
              height: 100.0,
            ),
            tag: 'splash',
          ),
        ),
      ]),
    );
  }
}
