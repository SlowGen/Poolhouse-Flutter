import './models/server.dart';
import './models/tipout_data.dart';
import 'dart:collection';

class Brain {
  Brain({required this.serverList, required this.tipout});

  final UnmodifiableListView<Server> serverList;
  final TipoutData tipout;
  double _rate = 0.0;
  double totalTips = 0.0;
  double totalPoints = 0.0;

  double getRate() {
    for (Server server in serverList) {
      totalTips += server.tips;
      totalPoints += server.points;
    }
    totalTips -= (tipout.tipout * totalTips) / 100;
    totalPoints != 0 ? _rate = totalTips / totalPoints : _rate = 0.0;
    return _rate;
  }

  double getTipoutTotal() {
    return (tipout.tipout * totalTips) / 100;
  }
}
