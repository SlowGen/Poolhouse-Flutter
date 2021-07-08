import 'package:flutter/material.dart';
import '../constants.dart';

import '../models/server.dart';

class ResultsTile extends StatelessWidget {
  final Server server;

  ResultsTile({
    required this.server,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      shadowColor: kAccentColorPurple,
      elevation: 10.0,
      child: ListTile(
        title: Column(
          children: [
            Text(
              '${server.name}',
              style: kTextStyleServerTileName,
            ),
            Text(
              '\$${server.allocation}',
              style: kTextStyleServerTileNumbers,
            ),
          ],
        ),
      ),
    );
  }
}
