import 'package:flutter/material.dart';

class SimpleTextFieldComp extends StatelessWidget {
  final String label;
  final String hint;
  final bool arrow;

  SimpleTextFieldComp({this.label, this.hint, this.arrow = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      style: TextStyle(color: Colors.black),
      decoration: new InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintStyle: TextStyle(color: Colors.black, fontSize: 18.0, height: 1.5),
        labelText: label,
        hintText: hint,
        suffixIcon: arrow
            ? Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey[400],
                size: 17.0,
              )
            : null,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey[300]),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey[300]),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey[300]),
        ),
      ),
    );
  }
}
