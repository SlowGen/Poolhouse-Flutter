import 'package:flutter/material.dart';
import '../constants.dart';

import '../screens/add_server_screen.dart';

//TODO 2: Write algorithm
//TODO 3: Add Calculate Button
//TODO 4: Busser tipout

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
          style: kTextStyleAppBar,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddServerScreen(),
          );
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 20.0,
                  color: Colors.white,
                  spreadRadius: 10.0,
                ),
              ],
            ),
            child: Hero(
              child: Image.asset(
                'assets/phSplash.png',
                height: 100.0,
              ),
              tag: 'splash',
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Center(
            child: TextButton(
              onPressed: () => {},
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(15.0),
              ),
              child: Text(
                'Instructions',
                style: kTextStyleWhite,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
