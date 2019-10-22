import 'package:flutter/material.dart';

class IdPerguntaProvider with ChangeNotifier {
  int _globalID = 0;
  bool _cadastrado = false;
  // IdPerguntaProvider(this._globalID);

  getGlobalID() => _globalID;
  setGlobalID(int globalID) => _globalID = globalID;

  getCadastrado() => _globalID;
  setCadastrado(bool cadastrado) => _cadastrado = cadastrado;

  void increment() {
    _globalID++;
    notifyListeners();
  }
}
