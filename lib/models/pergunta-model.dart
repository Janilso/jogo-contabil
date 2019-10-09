class PerguntaModel {
  int id;
  String texto;
  String alternativa1;
  String alternativa2;
  String alternativa3;
  String alternativa4;
  int alternativaCorreta;

  PerguntaModel(
      {this.id,
      this.texto,
      this.alternativa1,
      this.alternativa2,
      this.alternativa3,
      this.alternativa4,
      this.alternativaCorreta});

  PerguntaModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    texto = json['texto'];
    alternativa1 = json['alternativa 1'];
    alternativa2 = json['alternativa 2'];
    alternativa3 = json['alternativa 3'];
    alternativa4 = json['alternativa 4'];
    alternativaCorreta = json['alternativa_certa'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['texto'] = this.texto;
    data['alternativa 1'] = this.alternativa1;
    data['alternativa 2'] = this.alternativa2;
    data['alternativa 3'] = this.alternativa3;
    data['alternativa 4'] = this.alternativa4;
    data['alternativa_certa'] = this.alternativaCorreta;
    return data;
  }
}
