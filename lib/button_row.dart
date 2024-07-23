import 'package:flutter/material.dart';
import 'calculator_button.dart';

class ButtonRow extends StatelessWidget {
  final List<String> buttons;
  final void Function(String) onButtonPressed;

  ButtonRow({
    required this.buttons,
    required this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: buttons.map((buttonText) {
        if (['⌫', 'C', '%', '÷', 'x', '-', '+'].contains(buttonText)) {
          return CalculatorButton(
            text: buttonText,
            backColor: Color.fromARGB(255, 0, 183, 255),
            foreColor: Colors.white,
            onPressed: () => onButtonPressed(buttonText),
          );
        }
        return CalculatorButton(
          text: buttonText,
          onPressed: () => onButtonPressed(buttonText),
        );
      }).toList(),
    );
  }
}
