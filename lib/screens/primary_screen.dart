import 'package:flutter/material.dart';
import 'package:poolhouse/screens/results_screen.dart';

import '../constants.dart';

import '../screens/add_server_screen.dart';
import '../screens/add_tipout_screen.dart';
import '../screens/instructions_screen.dart';
import '../widgets/server_list.dart';

class PrimaryScreen extends StatefulWidget {
  static const String id = 'primary';

  @override
  _PrimaryScreenState createState() => _PrimaryScreenState();
}

class _PrimaryScreenState extends State<PrimaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'POOLHOUSE',
          style: kTextStyleAppBar,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            right: 30,
            bottom: 20,
            child: FloatingActionButton(
              heroTag: 'server',
              child: Icon(Icons.add),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => AddServerScreen(),
                );
              },
            ),
          ),
          Positioned(
            left: 30,
            bottom: 20,
            child: FloatingActionButton(
              heroTag: 'tipout',
              backgroundColor: kAccentColorOrange,
              child: Icon(Icons.remove),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => AddTipoutScreen(),
                );
              },
            ),
          ),
        ],
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
              onPressed: () {
                final snackBar = SnackBar(
                  content: Instructions(),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(15.0),
              ),
              child: Text(
                'Show Instructions',
                style: kTextStyleWhite,
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: ServerList(),
            ),
          ),
          Container(
            color: kAccentColorPurple,
            child: TextButton(
              onPressed: () => Navigator.pushNamed(context, ResultsScreen.id),
              child: Text(
                'Calculate',
                style: kTextStyleAppBar,
              ),
            ),
          )
        ],
      ),
    );
  }
}
