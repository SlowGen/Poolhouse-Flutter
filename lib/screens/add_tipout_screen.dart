import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';

import '../models/tipout_data.dart';

class AddTipoutScreen extends StatefulWidget {
  @override
  _AddTipoutScreenState createState() => _AddTipoutScreenState();
}

class _AddTipoutScreenState extends State<AddTipoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TipoutData>(builder: (context, tipoutData, child) {
      double tipoutValue = tipoutData.tipout.toDouble();
      return Container(
        child: Column(
          children: [
            SizedBox(
              height: 25.0,
            ),
            Text('${tipoutValue.round()}% selected'),
            Slider(
              value: tipoutValue,
              min: 0.0,
              max: 100.0,
              onChanged: (double tipout) {
                setState(() {
                  tipoutValue = tipout;
                });
                Provider.of<TipoutData>(context, listen: false)
                    .setTipout(tipout.round());
              },
            ),
            Text(
              'Select TOTAL tipout percentage here.',
              style: kTextStyleServerTileDelete,
            ),
            Text(
              'Use main app to divide tipouts after.',
              style: kTextStyleServerTileDelete,
            ),
          ],
        ),
      );
    });
  }
}
