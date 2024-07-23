import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final Color backColor;
  final Color foreColor;
  final VoidCallback onPressed;

  CalculatorButton({
    required this.text,
    this.backColor = Colors.white,
    this.foreColor = Colors.black,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 36,
              color: foreColor,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: backColor,
            foregroundColor: foreColor,
            padding: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
