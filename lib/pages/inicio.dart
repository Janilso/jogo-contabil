import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jogocontabil/components/button.dart';
import 'package:jogocontabil/controller/id-pergunta-provider.dart';
import 'package:jogocontabil/models/jogador-model.dart';
import 'package:jogocontabil/pages/pergutas-view.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  JogadorModel jogador = JogadorModel();
  Future _future;

  // final int _pontuacao = 115;
  // final String _nome = "Cláudia Sampaio";

  _HomePageState() {
    loadNameAndPontuacao();
  }

  Future loadNameAndPontuacao() async {
    var prefs = await SharedPreferences.getInstance();
    String _nome = prefs.getString("nome") ?? "Sem nome";
    int _pontuacao = prefs.getInt("pontuacao") ?? 0;

    setState(() {
      jogador.nome = _nome.toString();
      // print("Pontuação depois $_pontuacao");
      jogador.pontuacao = _pontuacao.toInt();
    });
  }

  @override
  void initState() {
    super.initState();
    _future = loadNameAndPontuacao();
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      loadNameAndPontuacao();
    });
    return FutureBuilder(
      future: _future,
      builder: (contex, snapshot) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text(
              "Game",
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.help_outline),
                onPressed: () {},
                color: Colors.white,
              )
            ],
            backgroundColor: Color(0xff4E0061),
          ),
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xffFF0066), Color(0xff2B0036)]),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(200)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          jogador.pontuacao.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 80,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "PONTOS",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    jogador.nome.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
            child: CustomButton(
              text: "COMEÇAR",
              onPressed: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => PerguntasView()));
              },
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
        );
      },
    );

    // return Scaffold(
    //   backgroundColor: Colors.black,
    //   appBar: AppBar(
    //     title: Text(
    //       "Game",
    //       style: TextStyle(
    //         fontWeight: FontWeight.w700,
    //       ),
    //     ),
    //     actions: <Widget>[
    //       IconButton(
    //         icon: Icon(Icons.help_outline),
    //         onPressed: () {},
    //         color: Colors.white,
    //       )
    //     ],
    //     backgroundColor: Color(0xff4E0061),
    //   ),
    //   body: Container(
    //     decoration: BoxDecoration(
    //       gradient: LinearGradient(
    //           begin: Alignment.topCenter,
    //           end: Alignment.bottomCenter,
    //           colors: [Color(0xffFF0066), Color(0xff2B0036)]),
    //     ),
    //     child: Center(
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: <Widget>[
    //           Container(
    //             height: 200,
    //             width: 200,
    //             decoration: BoxDecoration(
    //               color: Colors.white,
    //               borderRadius: BorderRadius.all(Radius.circular(200)),
    //             ),
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: <Widget>[
    //                 Text(
    //                   jogador.pontuacao.toString(),
    //                   textAlign: TextAlign.center,
    //                   style: TextStyle(
    //                     fontSize: 80,
    //                     fontWeight: FontWeight.w900,
    //                   ),
    //                 ),
    //                 Text(
    //                   "PONTOS",
    //                   textAlign: TextAlign.center,
    //                   style: TextStyle(
    //                     fontSize: 30,
    //                     fontWeight: FontWeight.w700,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           SizedBox(
    //             height: 30,
    //           ),
    //           Text(
    //             jogador.nome.toString(),
    //             style: TextStyle(
    //               fontWeight: FontWeight.w500,
    //               color: Colors.white,
    //               fontSize: 30,
    //             ),
    //           ),
    //           SizedBox(
    //             height: 70,
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    //   floatingActionButton: Padding(
    //     padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
    //     child: CustomButton(
    //       text: "COMEÇAR",
    //       onPressed: () {
    //         Navigator.push(context,
    //             CupertinoPageRoute(builder: (context) => PerguntasView()));
    //       },
    //     ),
    //   ),
    //   floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    // );
  }
}
