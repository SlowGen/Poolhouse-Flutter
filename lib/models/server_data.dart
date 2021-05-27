import 'package:flutter/widgets.dart';
import 'dart:collection';
import 'package:flutter/foundation.dart';

import './server.dart';

class ServerData extends ChangeNotifier {
  List<Server> _servers = [
    Server(),
  ];

  UnmodifiableListView<Server> get servers {
    return UnmodifiableListView(_servers);
  }

  void addServer(String newName, double newPoints, double newTips) {
    _servers.add(Server(name: newName, points: newPoints, tips: newTips));
    notifyListeners();
  }

  void editServer(
    Server oldServer,
    String updatedName,
    double updatedPoints,
    double updatedTips,
  ) {
    int index = _servers.indexOf(oldServer);

    _servers[index] = Server(
      name: updatedName,
      points: updatedPoints,
      tips: updatedTips,
    );
    notifyListeners();
  }

  void deleteServer(Server server) {
    _servers.remove(server);
    notifyListeners();
  }
}
