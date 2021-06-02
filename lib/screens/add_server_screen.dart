import 'dart:ui';
import 'package:flutter/painting.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import '../models/server_data.dart';
import '../constants.dart';

class AddServerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String name = "Server";
    String points = "1.0";
    String tips = "0.0";

    return Container(
      decoration: BoxDecoration(
        color: kAccentColorPurple,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15.0),
          topRight: Radius.circular(15.0),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
            topRight: Radius.circular(50.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25.0,
            ),
            TextFormField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) => name = value,
              decoration: InputDecoration(
                isDense: true,
                focusColor: Colors.lightGreenAccent,
                icon: Icon(Icons.person),
                hintText: 'Name',
                hintStyle: kTextStyleServerTileName,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tight(Size(100.0, 45.0)),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      // autofocus: true,
                      textAlign: TextAlign.center,
                      onChanged: (value) => points = value,
                      decoration: InputDecoration(
                        isDense: true,
                        focusColor: Colors.lightGreenAccent,
                        icon: Icon(Icons.list),
                        hintText: 'Split',
                        hintStyle: kTextStyleServerTileName,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tight(Size(100.0, 45.0)),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      // autofocus: true,
                      textAlign: TextAlign.center,
                      onChanged: (value) => tips = value,
                      decoration: InputDecoration(
                        isDense: true,
                        focusColor: Colors.lightGreenAccent,
                        icon: Icon(Icons.money),
                        hintText: 'Tips',
                        hintStyle: kTextStyleServerTileName,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  print(name);
                  Provider.of<ServerData>(context, listen: false).addServer(
                    name,
                    double.parse(points),
                    double.parse(tips),
                  );
                  Navigator.pop(context);
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(kAccentColorOrange),
                ),
                child: Text(
                  'Add Server',
                  style: kTextStyleServerTileName,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
