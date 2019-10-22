import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IdPerguntaProvider with ChangeNotifier {
  int _globalID = 0;
  int _globalPontuacao;

  getGlobalID() => _globalID;
  setGlobalID(int globalID) => _globalID = globalID;

  getPontuacao() => _globalPontuacao;

  setPontuacao(int pontuacao) {
    _globalPontuacao = pontuacao;
    notifyListeners();
  }

  void increment() {
    _globalID++;
    notifyListeners();
  }

  void loadPontuacao() async {
    var prefs = await SharedPreferences.getInstance();
    int _pontuacao = prefs.getInt("pontuacao") ?? 0;
    print(_pontuacao);
    setPontuacao(_pontuacao.toInt());
    // print(pontuacao);
  }
}
