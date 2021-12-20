import 'dart:async';

import 'package:flutter/widgets.dart';

class AppState extends ChangeNotifier {
  //on changing value here and doing hot reload change not reflected
  int temp = 30;

  void updateTemp(int temp) {
    //this.temp is the temp in class already present and temp is arguments received
    this.temp = temp;
    notifyListeners();
  }

  //Timer
  int start = 0;
  void updateStart(int start) {
    this.start = start;
    notifyListeners();
  }

  void getTimer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      updateStart(timer.tick);
    });
  }

  //PRovider with async
  String name = "Srijan";
  void updateName(String name) {
    this.name = name;
    notifyListeners();
  }

  Future<void> getName(String name) async {
    Future.delayed(const Duration(seconds: 5), () {
      updateName(name);
    });
  }
}
