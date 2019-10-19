class PerguntasJson {
  var perguntasJson;
  PerguntasJson() {
    perguntasJson = '''
[
  {
    "id": 0,
    "texto": "Quanyto é 1+1?",
    "alternativa 1": "2",
    "alternativa 2": "5",
    "alternativa 3": "15",
    "alternativa 4": "20",
    "alternativa_certa": 1
  },
  {
    "id": 1,
      "texto": "Quanto é 2x1?",
      "alternativa 1": "5",
      "alternativa 2": "2",
      "alternativa 3": "15",
      "alternativa 4": "20",
      "alternativa_certa": 2
  },
  {
    "id": 2,
    "texto": "Quanyto é 5/1?",
    "alternativa 1": "15",
    "alternativa 2": "2",
    "alternativa 3": "5",
    "alternativa 4": "20",
    "alternativa_certa": 3
  }
]
    ''';
  }

  String getPerguntaJson() {
    return perguntasJson;
  }
}
