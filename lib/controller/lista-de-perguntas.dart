import 'dart:convert';

import 'package:jogocontabil/controller/perguntas-json.dart';
import 'package:jogocontabil/models/pergunta-model.dart';

class ListaDePerguntas {
  List<PerguntaModel> listaDePergunta;

  ListaDePerguntas() {
    Iterable decoded = jsonDecode(PerguntasJson().getPerguntaJson());
    listaDePergunta = decoded.map((x) => PerguntaModel.fromJson(x)).toList();
  }

  List<PerguntaModel> getListaDePergunta() {
    Iterable decoded = jsonDecode(PerguntasJson().getPerguntaJson());
    return decoded.map((x) => PerguntaModel.fromJson(x)).toList();
  }

  String getPerguntaFromID(int id) {
    return listaDePergunta.elementAt(id).texto;
  }
}
