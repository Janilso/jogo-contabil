import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int _pontuacao = 115;
  String _nome = "Cláudia Sampaio";

  @override
  Widget build(BuildContext context) {
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
        ),
        body: Center(
          child: Column(
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
                      "$_pontuacao",
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
              )
            ],
          ),
        ));
  }
}
