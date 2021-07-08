import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './results_tile.dart';
import '../models/server_data.dart';

class ResultsList extends StatelessWidget {
  ResultsList({required this.rate});
  final double rate;

  @override
  Widget build(BuildContext context) {
    return Consumer<ServerData>(
      builder: (context, serverData, child) {
        return ListView.builder(
          itemBuilder: (context, int index) {
            final server = serverData.servers[index];
            server.setAllocation(rate * server.points);
            return ResultsTile(
              server: server,
            );
          },
          itemCount: serverData.serverCount,
        );
      },
    );
  }
}
