import 'dart:ui';
import 'package:flutter/painting.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import '../models/server_data.dart';
import '../constants.dart';

class AddServerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String name = 'Server';
    String points = '1.0';
    String tips = '0.0';

    return Container(
      color: kAccentColorPurple,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                'Server Name',
                style: kTextStyleServerTile,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) => name = value,
              selectionWidthStyle: BoxWidthStyle.tight,
              decoration: InputDecoration(
                focusColor: Colors.lightGreenAccent,
              ),
            ),
            Center(
              child: Text(
                'Split Metric',
                style: kTextStyleServerTile,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) => points = value,
              selectionWidthStyle: BoxWidthStyle.tight,
              decoration: InputDecoration(
                focusColor: Colors.lightGreenAccent,
              ),
            ),
            Center(
              child: Text(
                'Split Metric',
                style: kTextStyleServerTile,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) => points = value,
              selectionWidthStyle: BoxWidthStyle.tight,
              decoration: InputDecoration(
                focusColor: Colors.lightGreenAccent,
              ),
            ),
            TextButton(
              onPressed: () {
                Provider.of<ServerData>(context, listen: false).addServer(
                  name,
                  double.parse(points),
                  double.parse(tips),
                );
              },
              child: Text(
                'Add Server',
                style: kTextStyleServerTile,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
