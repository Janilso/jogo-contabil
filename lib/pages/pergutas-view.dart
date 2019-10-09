import 'package:flutter/material.dart';
import 'package:jogocontabil/components/perguntas-view/alternativa-component.dart';

class PerguntasView extends StatefulWidget {
  @override
  _PerguntasStateView createState() => _PerguntasStateView();
}

class _PerguntasStateView extends State<PerguntasView> {
  String _pergunta =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry?";
  String a = "Lorem Ipsum is simply";
  String b = "Lorem Ipsum is simply";
  String c = "Lorem Ipsum is simply";
  String d = "Lorem Ipsum is simply";

  @override
  Widget build(BuildContext context) {
    // final makeListTile =
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff8708A5), Color(0xff2B0036)]),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: IconButton(
                  icon: Icon(
                    Icons.home,
                    size: 40,
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, "/home");
                  },
                ),
              )
            ],
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          body: Padding(
            padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
            child: Column(
              children: <Widget>[
                Text(
                  "$_pergunta",
                  style: Theme.of(context).textTheme.title,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 50,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int i) {
                    return InkWell(
                      onTap: () {
                        print("$i");
                      },
                      child: Alternativa(),
                    );
                  },
                ),
              ],
            ),
          )),
    );
  }
}
