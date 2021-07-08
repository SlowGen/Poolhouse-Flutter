import './models/server.dart';
import './models/server_data.dart';
import './models/tipout_data.dart';
import 'dart:collection';
import 'package:provider/provider.dart';

class Brain {
  Brain({required this.serverList, required this.tipout});

  final UnmodifiableListView<Server> serverList;
  final TipoutData tipout;
  double _rate = 0.0;

  double setRate() {
    double totalTips = 0.0;
    double totalPoints = 0.0;
    for (Server server in serverList) {
      totalTips += server.tips;
      totalPoints += server.points;
    }
    totalTips -= tipout.tipout * totalTips;
    totalPoints != 0 ? _rate = totalTips / totalPoints : _rate = 0.0;
    return _rate;
  }

  // void mapAllocation() {
  //   setRate();
  //   print(_rate);
  //   serverList.map((server) {
  //     print(server.name);
  //     server.setAllocation(_rate * server.points);
  //   });
  // }
}
