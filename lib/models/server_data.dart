import 'package:flutter/widgets.dart';
import 'dart:collection';
import 'package:flutter/foundation.dart';

import './server.dart';

class ServerData extends ChangeNotifier {
  List<Server> _servers = [];

  UnmodifiableListView<Server> get servers {
    return UnmodifiableListView(_servers);
  }

  void addServer(String newName, double newPoints, double newTips) {
    _servers.add(Server(name: newName, points: newPoints, tips: newTips));
    notifyListeners();
  }

  int get serverCount {
    return _servers.length;
  }

  void deleteServer(Server server) {
    _servers.remove(server);
    notifyListeners();
  }
}
