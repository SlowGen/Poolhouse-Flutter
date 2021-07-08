import 'package:flutter/material.dart';
import 'package:poolhouse/screens/enter_data_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter/widgets.dart';
import 'dart:collection';

import '../constants.dart';
import '../brain.dart';

import '../models/server.dart';
import '../models/server_data.dart';
import '../models/tipout_data.dart';
import '../screens/enter_data_screen.dart';
import '../widgets/results_list.dart';

class ResultsScreen extends StatelessWidget {
  static const String id = 'results';

  @override
  Widget build(BuildContext context) {
    final TipoutData tipouts = Provider.of<TipoutData>(context, listen: false);
    final UnmodifiableListView<Server> serverList =
        Provider.of<ServerData>(context, listen: false).servers;
    final Brain brain = Brain(serverList: serverList, tipout: tipouts);
    final double rate = brain.getRate();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'POOLHOUSE',
          style: kTextStyleAppBar,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('RESET'),
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(
              context, DataEntry.id, (route) => false);
        },
      ),
      body: ResultsList(rate: rate),
    );
  }
}

/**
 * 
    
 */