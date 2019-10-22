class JogadorModel {
  String nome;
  int pontuacao;
  bool cadastrado;

  JogadorModel({this.nome, this.pontuacao, this.cadastrado});

  JogadorModel.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    pontuacao = json['pontuacao'];
    cadastrado = json['cadastrado'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['pontuacao'] = this.pontuacao;
    data['cadastrado'] = this.cadastrado;
    return data;
  }
}
