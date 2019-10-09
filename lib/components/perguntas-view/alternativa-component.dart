import 'package:flutter/material.dart';

class Alternativa extends StatelessWidget {
  final String textoAlternativa;

  Alternativa({@required this.textoAlternativa});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        leading: Container(
          padding: EdgeInsets.only(right: 12.0),
          child: Icon(Icons.autorenew, color: Colors.white),
        ),
        title: Text(
          textoAlternativa,
          style: Theme.of(context).textTheme.caption,
        ),
      ),
    );
  }
}
