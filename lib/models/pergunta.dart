class PerguntaModel {
  int id;
  String texto;
  List alternativas;
  String respostaCorreta;

  PerguntaModel({this.id, this.alternativas, this.respostaCorreta, this.texto});
}
