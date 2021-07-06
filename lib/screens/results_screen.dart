import 'package:flutter/material.dart';
import '../constants.dart';

import '../widgets/results_list.dart';

class ResultsScreen extends StatelessWidget {
  static const String id = 'results';

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
        child: Text('RESET'),
        onPressed: () {
          Navigator.popUntil(context, (route) => false);
        },
      ),
      body: ResultsList(),
    );
  }
}
