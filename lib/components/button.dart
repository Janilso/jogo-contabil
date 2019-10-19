import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  CustomButton({@required this.onPressed, this.text});
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 250,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(80),
        ),
      ),
      child: SizedBox.expand(
        child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(80),
            ),
            child: Text(
              "$text",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Theme.of(context).primaryColor,
              ),
            ),
            onPressed: onPressed),
      ),
    );
  }
}
