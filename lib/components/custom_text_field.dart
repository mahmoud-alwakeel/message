import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({this.hintText, this.labelText});

  String? hintText;
  String? labelText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Colors.white),
        labelStyle: TextStyle(color: Colors.white),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.white
            )
        ),
        border: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.white
            )
        ),
        labelText: hintText,
        hintText: labelText,
      ),
    );
  }
}