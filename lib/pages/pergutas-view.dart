import 'package:flutter/material.dart';
import 'package:jogocontabil/components/button.dart';
import 'package:jogocontabil/components/perguntas-view/alternativa-component.dart';
import 'package:jogocontabil/controller/lista-de-perguntas.dart';
import 'package:jogocontabil/models/pergunta-model.dart';

class PerguntasView extends StatefulWidget {
  @override
  _PerguntasStateView createState() => _PerguntasStateView();
}

class _PerguntasStateView extends State<PerguntasView> {
  // bool isSelected = false;
  static ListaDePerguntas listaTotal = ListaDePerguntas();
  static int id = 0;
  int _selectedIndex;

  String _pergunta = listaTotal.getPerguntaFromID(id);
  List _listAlternativas = listaTotal.getAlternativasFromID(id);
  String _perguntaCorreta = listaTotal.getPerguntaFromID(id);

  @override
  Widget build(BuildContext context) {
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
          automaticallyImplyLeading: false,
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: IconButton(
                icon: Icon(
                  Icons.home,
                  size: 40,
                ),
                onPressed: () {
                  Navigator.of(context).pop(null);
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
                itemCount: _listAlternativas.length,
                itemBuilder: (BuildContext context, int i) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        _selectedIndex = i;
                      });
                    },
                    child: _selectedIndex != null && _selectedIndex == i
                        ? icon(true, _listAlternativas[i])
                        : icon(false, _listAlternativas[i]),
                  );
                },
              ),
              SizedBox(
                height: 50,
              ),
              CustomButton(
                onPressed: () {},
                text: "RESPONDER",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget icon(bool isSelected, String texto) {
    return Alternativa(
      textoAlternativa: texto,
      isSelected: isSelected,
    );
  }
}
