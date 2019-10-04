import 'package:flutter/material.dart';
import 'package:jogocontabil/pages/inicio.dart';
import 'package:jogocontabil/pages/pergutas-view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          body1: TextStyle(
            color: Color(0xffFF0066),
          ),
        ),
        primarySwatch: Colors.blue,
        primaryColor: Color(0xffff0066),
        fontFamily: 'Raleway',
        buttonTheme: ButtonThemeData(
          height: 50,
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: HomePage(),
      routes: {
        "/perguntas": (_) => PerguntasView(),
        "/home": (_) => HomePage(),
      },
    );
  }
}
