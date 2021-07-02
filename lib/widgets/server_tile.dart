import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constants.dart';

import '../models/server.dart';
import '../models/server_data.dart';

class ServerTile extends StatelessWidget {
  final Server server;
  final Function delete;

  ServerTile({
    required this.server,
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
        leading: IconButton(
            onPressed: () => {
                  Provider.of<ServerData>(context, listen: false)
                      .deleteServer(server)
                },
            icon: Icon(Icons.clear)),
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
      ),
    );
  }
}
