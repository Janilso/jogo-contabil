import 'package:jogocontabil/models/alternativa-model.dart';

class PerguntaModel {
  int id;
  String texto;
  List<AlternativaModel> alternativas;
  String respostaCorreta;

  PerguntaModel({this.id, this.alternativas, this.respostaCorreta, this.texto});
}
