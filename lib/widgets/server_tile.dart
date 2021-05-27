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
    return ListTile(
      title: Text(
        '${this.server.name}',
        style: kTextStyleServerTile,
      ),
      subtitle: Text(
        'Tap and hold to delete',
        style: kTextStyleServerTile.copyWith(fontSize: 5.0),
      ),
      onTap: () => edit,
      onLongPress: () => delete,
    );
  }
}
