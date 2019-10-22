class PerguntasJson {
  var perguntasJson;
  PerguntasJson() {
    perguntasJson = '''
[
  {
    "id": 0,
    "texto": "O somatório de todos os bens e direitos adquiridos pela entidade recebe o nome de :",
    "alternativa 1": "Despesa",
    "alternativa 2": "Obrigação",
    "alternativa 3": "Conta",
    "alternativa 4": "Ativo",
    "alternativa_certa": 4
  },
  {
    "id": 1,
      "texto": "Qual nome se dá a parte da riqueza de uma entidade que a ela pertence e que está em seu poder?",
      "alternativa 1": "Fato Contábil",
      "alternativa 2": "Dívidas",
      "alternativa 3": "Bens",
      "alternativa 4": "Obrigações",
      "alternativa_certa": 3
  },
  {
    "id": 2,
    "texto": "Para cada conta  um(a)...?",
    "alternativa 1": "Débito",
    "alternativa 2": "Razonete",
    "alternativa 3": "Crédito",
    "alternativa 4": "Item",
    "alternativa_certa": 2
  },
  {
    "id": 3,
    "texto": "O balanço Patrimonial é dividido por dois grandes grupos, quais são eles?",
    "alternativa 1": "Bens e direitos Social",
    "alternativa 2": "Ativo e Passivo",
    "alternativa 3": "Obrigações e Capital",
    "alternativa 4": "Despesas e aplicações",
    "alternativa_certa": 2
  },
  {
    "id": 4,
    "texto": "Conta T também é denominada como:",
    "alternativa 1": "Gráfico/Razonete",
    "alternativa 2": "Fato/Patrimônio",
    "alternativa 3": "Razonete/Equação",
    "alternativa 4": "Razonete/Patrimônio",
    "alternativa_certa": 1
  },
  {
    "id": 5,
    "texto": "Curto prazo na Contabilidade corresponde a:",
    "alternativa 1": "Até 5 anos",
    "alternativa 2": "Até 10 anos",
    "alternativa 3": "Até 11 meses",
    "alternativa 4": "Até 1 ano",
    "alternativa_certa": 4
  },
  {
    "id": 6,
    "texto": "Definido(a)  com o aumento nos benefícios econômicos durante o período, sob a forma de entrada  de recursos ou aumento de ativos ou diminuição de passivos:",
    "alternativa 1": "Despesa",
    "alternativa 2": "Débito",
    "alternativa 3": "Receita",
    "alternativa 4": "Crédito",
    "alternativa_certa": 3
  },
  {
    "id": 7,
    "texto": "Principais usuários das demonstrações contábeis:",
    "alternativa 1": "Sócios/Administradores",
    "alternativa 2": "Investidores/Credores",
    "alternativa 3": "Fornecedor/Banco",
    "alternativa 4": "Banco/Administradores",
    "alternativa_certa": 2
  },
  {
    "id": 8,
    "texto": "Bens que podemos ver e tocar são os:",
    "alternativa 1": "Tangíveis",
    "alternativa 2": "Realizável",
    "alternativa 3": "Intangíveis",
    "alternativa 4": "Imobiliário",
    "alternativa_certa": 1
  },
  {
    "id": 9,
    "texto": "São dívidas decorrentes das operações  da empresa:",
    "alternativa 1": "Dívidas de financiamento",
    "alternativa 2": "Dívidas Debêntures",
    "alternativa 3": "Dívidas de funcionamento",
    "alternativa 4": "Dívidas Título",
    "alternativa_certa": 3
  }
]
    ''';
  }

  String getPerguntaJson() {
    return perguntasJson;
  }
}
