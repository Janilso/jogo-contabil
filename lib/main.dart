import 'package:flutter/material.dart';
// import 'package:jogocontabil/models/jogador-model.dart';
import 'package:jogocontabil/pages/cadastro.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'controller/id-pergunta-provider.dart';
import 'package:jogocontabil/pages/inicio.dart';
// import 'package:jogocontabil/pages/pergutas-view.dart';

Future<void> main() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool logged = prefs.getBool("cadastrado") ?? false;
  logged != null && logged == true ? logged = true : logged = false;
  print(logged);
  runApp(MyApp(
    logged: logged,
  ));
}

class MyApp extends StatelessWidget {
  final bool logged;
  MyApp({this.logged});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          builder: (_) => IdPerguntaProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          textTheme: TextTheme(
              body1: TextStyle(
                color: Color(0xffFF0066),
              ),
              title: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 30,
              ),
              caption: TextStyle(
                color: Color(0xffFF99C2),
                fontSize: 20,
              ),
              display1: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: 30,
                decoration: TextDecoration.none,
              )),
          primarySwatch: Colors.blue,
          inputDecorationTheme: InputDecorationTheme(
            labelStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
          ),
          primaryColor: Color(0xffff0066),
          fontFamily: 'Raleway',
          buttonTheme: ButtonThemeData(
            height: 50,
            textTheme: ButtonTextTheme.primary,
          ),
        ),
        home: logged ? HomePage() : Cadastro(),
      ),
    );
  }
}
