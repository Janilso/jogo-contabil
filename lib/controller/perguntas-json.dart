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
  },
  {
    "id": 10,
    "texto": "Qual elemento do balanço patrimonial representa o capital de giro da empresa ?",
    "alternativa 1": "Capital social",
    "alternativa 2": "Imobilizado",
    "alternativa 3": "Passivo circulante",
    "alternativa 4": "Ativo circulante",
    "alternativa_certa": 4
  },
  {
    "id": 11,
    "texto": "Sobre os objetivos da contabilidade assinale a alternativa correta:",
    "alternativa 1": "Demonstrar corretamente o balanço",
    "alternativa 2": "Prover aos diferentes usuários informações sobre aspectos de natureza econômica, financeira e física do patrimônio",
    "alternativa 3": "Evidenciar e analisar as mutações patrimoniais",
    "alternativa 4": "Todas as afirmativas anteriores estão corretas",
    "alternativa_certa": 4
  },
  {
    "id": 12,
    "texto": "São técnicas contábeis:",
    "alternativa 1": "Escrituração, demonstração contábeis auditoria e perícia e análise das demonstrações contábeis",
    "alternativa 2": "Balanço patrimonial, demonstração do resultado do exercício patrimôniolíquido e analise e balanços",
    "alternativa 3": "Escrituração demonstração contábeis atos administrativos e balanço patrimonial",
    "alternativa 4": "Auditoria,principios contábeis atos administrativos",
    "alternativa_certa": 2
  },
  {
    "id": 13,
    "texto": "diferença entre ativo e passivo e denominada:",
    "alternativa 1": "Situação liquida patrimonial",
    "alternativa 2": "Balanço patrimonial",
    "alternativa 3": "Situação liquida patrimonial positiva",
    "alternativa 4": "Situação liquida patrimonial negativa",
    "alternativa_certa": 1
  },
   {
    "id": 14,
    "texto": "A seguinte opção não é considerada uma técnica contábil:",
    "alternativa 1": "Escrituração",
    "alternativa 2": "Elaboração das demonstrações contábeis",
    "alternativa 3": "Auditoria ",
    "alternativa 4": "Planejamento",
    "alternativa_certa": 4
  },
  {
    "id": 15,
    "texto": "Podemos definir a contabilidade como:",
    "alternativa 1": "Sistema de informações que registra as ocorrências que afetam o patrimônio de uma entidade, visando a obtenção de um resultado mensurável economicamente",
    "alternativa 2": "Ciência que estuda o patrimônio, usando uma metodologia especifica para coletarregistrar acumular resumir e analisar, todos os fatos que afetam a situação patrimonial de uma entidade",
    "alternativa 3": "Conjunto de princípios normas e procedimento que tem como finalidade ordenar os fatores de produção",
    "alternativa 4": "Ciência que organiza, orienta a analisa os fenômenos relativos a produção.",
    "alternativa_certa": 2
  }
  
]
    ''';
  }

  String getPerguntaJson() {
    return perguntasJson;
  }
}
