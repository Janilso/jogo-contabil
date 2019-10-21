import 'package:flutter/material.dart';

class IdPerguntaProvider with ChangeNotifier {
  int _globalID = 0;
  // IdPerguntaProvider(this._globalID);

  getGlobalID() => _globalID;
  setGlobalID(int globalID) => _globalID = globalID;

  void increment() {
    _globalID++;
    notifyListeners();
  }
}
