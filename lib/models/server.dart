import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';

class Server extends ChangeNotifier {
  String name;
  double points;
  double tips;
  double allocation;

  Server({
    this.name = 'server',
    this.points = 1.0,
    this.tips = 0.0,
    this.allocation = 0.0,
  });

  void setAllocation(amount) {
    this.allocation = amount;
    notifyListeners();
  }
}
