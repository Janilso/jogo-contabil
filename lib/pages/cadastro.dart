import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jogocontabil/components/button.dart';
import 'package:jogocontabil/components/input.dart';
import 'package:jogocontabil/pages/inicio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toast/toast.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  Future<bool> _future;
  // bool cadastrado = false;

  Future<bool> isCadastrado() async {
    bool retorno;
    var prefs = await SharedPreferences.getInstance();
    var logged = prefs.getBool('cadastrado');
    print("Logado = $logged");
    if (logged != null) logged ? retorno = true : retorno = false;
    return retorno;
  }

  addJogador(TextEditingController controlador) async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setInt("pontuacao", 0);
    await prefs.setString('nome', controlador.text)
        ? savedJogador()
        : Toast.show(
            "Erro ao cadastrar",
            context,
            duration: Toast.LENGTH_SHORT,
            gravity: Toast.BOTTOM,
          );
  }

  savedJogador() async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setBool('cadastrado', true)
        ? Navigator.pushReplacement(
            context,
            CupertinoPageRoute(builder: (BuildContext context) => HomePage()),
          )
        : Toast.show(
            "Erro ao salvar cadastro",
            context,
            duration: Toast.LENGTH_SHORT,
            gravity: Toast.BOTTOM,
          );
  }

  var controladorJogador = TextEditingController();

  @override
  void initState() {
    super.initState();
    _future = isCadastrado();
  }

  @override
  Widget build(BuildContext context) {
    return cadastroView();
  }

  Widget cadastroView() {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Cadastro",
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
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
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CustomTextFormField(
                        labelText: "Seu nome",
                        keyboardType: TextInputType.text,
                        controlador: controladorJogador,
                      ),
                      SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
        child: CustomButton(
          text: "CADASTRAR",
          onPressed: () {
            controladorJogador.text.isEmpty
                ? Toast.show(
                    "Por favor, digite seu nome!",
                    context,
                    duration: Toast.LENGTH_SHORT,
                    gravity: Toast.BOTTOM,
                  )
                : addJogador(controladorJogador);
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
