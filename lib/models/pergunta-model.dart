class PerguntaModel {
  int id;
  String texto;
  List<String> alternativas;
  int respostaCorreta;

  PerguntaModel({this.id, this.alternativas, this.respostaCorreta, this.texto});
}
