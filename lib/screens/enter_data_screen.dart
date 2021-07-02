import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constants.dart';

import '../screens/add_server_screen.dart';
import '../screens/instructions_screen.dart';
import '../widgets/server_list.dart';
import '../models/server_data.dart';

//TODO 2: Write algorithm
//TODO 3: Add Calculate Button
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
    int serverCount =
        Provider.of<ServerData>(context, listen: false).serverCount;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'POOLHOUSE',
          style: kTextStyleAppBar,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
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
        ],
      ),
    );
  }
}
