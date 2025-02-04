import 'package:flutter/foundation.dart';
import '../models/counter_model.dart';

class CounterViewModel extends ChangeNotifier {
  CounterModel model = CounterModel();

  int getCompteur() {
    return model.getCompteur();
  }

  void decrementCounter() {
    model.decrementCounter();
    notifyListeners();
  }

  void incrementCounter() {
    model.incrementCounter();
    notifyListeners();
  }
}