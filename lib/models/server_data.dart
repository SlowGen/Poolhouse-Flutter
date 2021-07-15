import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'dart:collection';

import './server.dart';

class ServerData extends ChangeNotifier {
  List<Server> _servers = [
    Server(name: 'Kali', tips: 500.00, points: 8.0),
    Server(name: 'Ashlee', tips: 300.00, points: 4.0),
  ];

  Key key = UniqueKey();

  UnmodifiableListView<Server> get servers {
    return UnmodifiableListView(_servers);
  }

  void addServer(
    String newName,
    double newPoints,
    double newTips,
  ) {
    _servers.add(
      Server(name: newName, points: newPoints, tips: newTips),
    );
    key = UniqueKey();
    notifyListeners();
  }

  int get serverCount {
    return _servers.length;
  }

  void deleteServer(Server server) {
    _servers.remove(server);
    notifyListeners();
  }

  Key get getKey {
    return key;
  }
}
