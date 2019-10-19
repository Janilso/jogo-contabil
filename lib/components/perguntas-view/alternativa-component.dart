import 'package:flutter/material.dart';

class Alternativa extends StatelessWidget {
  final String textoAlternativa;
  final bool isSelected;

  Alternativa({@required this.textoAlternativa, this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        leading: Container(
          padding: EdgeInsets.only(right: 12.0),
          // child: Icon(Icons.autorenew, color: Colors.white),
          child: getIcon(isSelected),
        ),
        title: Text(
          textoAlternativa,
          style: Theme.of(context).textTheme.caption,
        ),
      ),
    );
  }

  Widget getIcon(isSelected) {
    Widget icon;
    if (isSelected) {
      icon = Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffFF99C2), width: 5),
          shape: BoxShape.circle,
          color: Color(0xffFF99C2),
        ),
      );
    } else {
      icon = Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffFF99C2), width: 5),
          shape: BoxShape.circle,
        ),
      );
    }
    return icon;
  }
}
