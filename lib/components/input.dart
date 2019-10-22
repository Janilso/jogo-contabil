import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextInputType keyboardType;
  final String labelText;
  final TextEditingController controlador;

  CustomTextFormField({
    @required this.labelText,
    this.keyboardType,
    this.controlador,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controlador,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: this.labelText,
      ),
      style: Theme.of(context).textTheme.display1,
      cursorColor: Colors.white,
    );
  }
}
