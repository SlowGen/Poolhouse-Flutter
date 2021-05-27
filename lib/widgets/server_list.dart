import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './server_tile.dart';
import '../models/server_data.dart';

class ServerList extends StatelessWidget {
  void edit(server) {}

  //TODO 1: write edit server function

  @override
  Widget build(BuildContext context) {
    return Consumer<ServerData>(
      builder: (context, serverData, child) {
        return ListView.builder(
          itemBuilder: (context, int index) {
            final server = serverData.servers[index];

            return ServerTile(
              server: server,
              edit: edit,
              delete: () {
                serverData.deleteServer(server);
              },
            );
          },
        );
      },
    );
  }
}
