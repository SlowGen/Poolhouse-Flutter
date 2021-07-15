import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';

class TipoutData extends ChangeNotifier {
  int tipout = 0;
  double allocation = 0.0;

  void resetTipout() {
    tipout = 0;
    notifyListeners();
  }

  int getTipout() => tipout;

  void setTipout(int newTipout) {
    tipout = newTipout;
    notifyListeners();
  }

  void setAllocation(double newAllocation) {
    allocation = newAllocation;
    notifyListeners();
  }
}

//TODO is change notifier needed?