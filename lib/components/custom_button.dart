import 'package:flutter/material.dart';

import '../constants.dart';

class CustomButton extends StatelessWidget {
  CustomButton({required this.buttonText});

  String? buttonText;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text(buttonText!)),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          color: kTextColor,
          borderRadius: BorderRadius.circular(12)
      ),
    );
  }
}
