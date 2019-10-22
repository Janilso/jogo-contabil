import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jogocontabil/components/button.dart';
import 'package:jogocontabil/components/perguntas-view/alternativa-component.dart';
import 'package:jogocontabil/controller/id-pergunta-provider.dart';
import 'package:jogocontabil/controller/lista-de-perguntas.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toast/toast.dart';

class PerguntasView extends StatefulWidget {
  @override
  _PerguntasStateView createState() => _PerguntasStateView();
}

class _PerguntasStateView extends State<PerguntasView>
    with SingleTickerProviderStateMixin {
  static ListaDePerguntas listaTotal = ListaDePerguntas();

  int _selectedIndex;
  int _responstaSelecionada;
  bool _isResponder = false;
  bool _isSelected = false;
  bool _isClickable = true;

  int pontuacao;

  Future loadPontuacao() async {
    var prefs = await SharedPreferences.getInstance();
    int _pontuacao = prefs.getInt("pontuacao") ?? 0;
    pontuacao = _pontuacao.toInt();
    print(pontuacao);
  }

  void changePontuacao(int novaPontuacao) async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setInt("pontuacao", novaPontuacao);
  }

  @override
  void initState() {
    super.initState();
    loadPontuacao();
  }

  @override
  Widget build(BuildContext context) {
    int id = Provider.of<IdPerguntaProvider>(context).getGlobalID();

    String _pergunta = listaTotal.getPerguntaFromID(id);
    List _listAlternativas = listaTotal.getAlternativasFromID(id);
    int _alternativaCorreta = listaTotal.getAlternativaCorretaFromID(id);

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
                      if (_isClickable) {
                        setState(() {
                          _selectedIndex = i;
                          _responstaSelecionada = i + 1;
                          _isResponder = true;
                          _isSelected = true;
                        });
                      }
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
              _isSelected
                  ? _isResponder
                      ? getButton(true, () {
                          String text;
                          _responstaSelecionada == _alternativaCorreta
                              ? text = "Resposta Correta"
                              : text = "Resposta Errada";
                          Toast.show(
                            text,
                            context,
                            duration: Toast.LENGTH_SHORT,
                            gravity: Toast.BOTTOM,
                          );
                          print(id);
                          changePontuacao(pontuacao + 10);
                          setState(() {
                            _isResponder = false;
                            _isClickable = false;
                          });
                        }, "RESPONDER")
                      : getButton(false, () {
                          Provider.of<IdPerguntaProvider>(context).increment();
                          Navigator.pushReplacement(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => PerguntasView()));
                          print(id);
                        }, "CONTINUAR")
                  : Container(),
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

  Widget getButton(bool responder, GestureTapCallback onPressed, String texto) {
    Widget retorno;
    if (responder) {
      retorno = CustomButton(
        onPressed: onPressed,
        text: texto,
      );
    } else {
      retorno = CustomButton(
        onPressed: onPressed,
        text: texto,
      );
    }
    return retorno;
  }
}
