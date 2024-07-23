import 'package:flutter/material.dart';
import 'calculator_button.dart';
import 'button_row.dart'; // Import the new ButtonRow widget
import 'package:math_expressions/math_expressions.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String _expression = '';
  String _result = '';

  void _onButtonPressed(String text) {
    setState(() {
      if (text == 'C') {
        _expression = '';
        _result = '';
      } else if (text == '⌫') {
        if (_expression.isNotEmpty) {
          _expression = _expression.substring(0, _expression.length - 1);
        }
      } else if (text == '=') {
        try {
          Parser p = Parser();
          Expression exp =
              p.parse(_expression.replaceAll('x', '*').replaceAll('÷', '/'));
          ContextModel cm = ContextModel();
          _result = '${exp.evaluate(EvaluationType.REAL, cm)}';
          _expression = _result;
        } catch (e) {
          _result = 'Error';
          _expression = '';
        }
      } else {
        _expression += text;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 1, 21, 41),
      appBar: AppBar(
        title: Text(
          'Hesap Makinesi',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                  blurRadius: 2.0,
                  color: Colors.black,
                  offset: Offset(1.0, 2.0),
                ),
              ]),
        ),
        backgroundColor: Color.fromARGB(255, 2, 233, 2),
      ),
      body: Column(
        children: <Widget>[
          SingleChildScrollView(
            child: Expanded(
              child: Container(
                height: 200,
                padding: EdgeInsets.all(20),
                alignment: Alignment.bottomRight,
                child: Text(
                  _expression,
                  style: TextStyle(
                      fontSize: 42,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Expanded(child: _buildButtonGrid()),
        ],
      ),
    );
  }

  Widget _buildButtonGrid() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        ButtonRow(
          buttons: ['C', '÷', 'x', '⌫'],
          onButtonPressed: _onButtonPressed,
        ),
        ButtonRow(
          buttons: ['7', '8', '9', '-'],
          onButtonPressed: _onButtonPressed,
        ),
        ButtonRow(
          buttons: ['4', '5', '6', '+'],
          onButtonPressed: _onButtonPressed,
        ),
        Row(children: <Widget>[
          CalculatorButton(
            text: '1',
            onPressed: () => _onButtonPressed('1'),
          ),
          CalculatorButton(
            text: '2',
            onPressed: () => _onButtonPressed('2'),
          ),
          CalculatorButton(
            text: '3',
            onPressed: () => _onButtonPressed('3'),
          ),
          CalculatorButton(
            text: '=',
            backColor: Color.fromARGB(255, 0, 0, 0),
            foreColor: Colors.white,
            onPressed: () => _onButtonPressed('='),
          ),
        ]),
        Row(
          children: <Widget>[
            CalculatorButton(
              text: '%',
              onPressed: () => _onButtonPressed('%'),
            ),
            CalculatorButton(
              text: '0',
              onPressed: () => _onButtonPressed('0'),
            ),
            CalculatorButton(
              text: '.',
              onPressed: () => _onButtonPressed('.'),
            ),
            Expanded(
                child: SizedBox()), // Empty space for '=' button continuation
          ],
        ),
      ],
    );
  }
}
