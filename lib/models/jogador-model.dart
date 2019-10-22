class JogadorModel {
  String nome;
  int pontuacao;

  JogadorModel({this.nome, this.pontuacao});

  JogadorModel.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    pontuacao = json['pontuacao'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['pontuacao'] = this.pontuacao;
    return data;
  }
}
