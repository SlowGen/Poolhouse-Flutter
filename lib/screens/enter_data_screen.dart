import 'package:flutter/material.dart';
import '../constants.dart';

import '../screens/add_server_screen.dart';
import '../screens/add_tipout_screen.dart';
import '../screens/instructions_screen.dart';
import '../widgets/server_list.dart';

//TODO 2: Write algorithm
//TODO 4: Busser tipout

class DataEntry extends StatefulWidget {
  static const String id = 'data';

  @override
  _DataEntryState createState() => _DataEntryState();
}

class _DataEntryState extends State<DataEntry> {
  bool showInstructions = true;

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
                setState(() {
                  showInstructions = false;
                });
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
                setState(() {
                  showInstructions = false;
                });
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
                setState(() {
                  showInstructions = !showInstructions;
                });
                print(showInstructions);
              },
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(15.0),
              ),
              child: Text(
                showInstructions ? 'Show List' : 'Show Instructions',
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
              child: showInstructions ? Instructions() : ServerList(),
            ),
          ),
          Container(
            color: kAccentColorPurple,
            child: TextButton(
                onPressed: () => {},
                child: Text(
                  'Calculate',
                  style: kTextStyleAppBar,
                )),
          )
        ],
      ),
    );
  }
}
