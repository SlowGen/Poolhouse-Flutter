import './models/server.dart';

class Brain {
  Brain({required this.serverList, required this.tipout});

  final List<Server> serverList;
  final int tipout;
  double _rate = 0.0;

  void setRate() {
    double totalTips = 0.0;
    double totalPoints = 0.0;
    for (Server server in serverList) {
      totalTips += double.parse(server.tips);
      totalPoints += double.parse(server.points);
    }
    totalTips -= tipout;
    _rate = totalTips / totalPoints;
  }

  void mapAllocation() {
    setRate();
    serverList.map((server) {
      server.allocation = (_rate * double.parse(server.points)).toString();
    });
  }
}
