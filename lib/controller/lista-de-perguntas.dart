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
    String retorno = "Sem mais perguntas!";
    if (id <= this.listaDePergunta.length - 1) {
      retorno = listaDePergunta.elementAt(id).texto;
    }
    return retorno;
  }

  List<String> getAlternativasFromID(int id) {
    List<String> retorno = [];
    if (id <= this.listaDePergunta.length - 1) {
      retorno.add(this.listaDePergunta.elementAt(id).alternativa1.toString());
      retorno.add(this.listaDePergunta.elementAt(id).alternativa2.toString());
      retorno.add(this.listaDePergunta.elementAt(id).alternativa3.toString());
      retorno.add(this.listaDePergunta.elementAt(id).alternativa4.toString());
    }
    return retorno;
  }

  int getAlternativaCorretaFromID(int id) {
    int retorno = 0;
    if (id <= this.listaDePergunta.length - 1) {
      retorno = listaDePergunta.elementAt(id).alternativaCorreta.toInt();
    }
    return retorno;
  }
}
