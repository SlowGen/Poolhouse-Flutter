import 'package:flutter/material.dart';
import '../constants.dart';

import '../models/server.dart';

class ServerTile extends StatelessWidget {
  final Server server;
  final Function edit;
  final Function delete;

  ServerTile({
    required this.server,
    required this.edit,
    required this.delete,
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
        // tileColor: Colors.white,
        // selectedTileColor: Colors.white,
        leading: IconButton(onPressed: () => {}, icon: Icon(Icons.edit)),
        title: Column(
          children: [
            Text(
              '${this.server.name}',
              style: kTextStyleServerTileName,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '${this.server.points}',
                  style: kTextStyleServerTileNumbers,
                ),
                Text(
                  '\$${this.server.tips}',
                  style: kTextStyleServerTileNumbers,
                ),
              ],
            ),
          ],
        ),
        subtitle: Center(
          child: Text(
            'Tap and hold to delete',
            style: kTextStyleServerTileDelete,
          ),
        ),
        onTap: () => edit,
        onLongPress: () => delete,
      ),
    );
  }
}
