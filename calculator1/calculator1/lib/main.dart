//import 'dart:ffi';
//import 'dart:ffi';

import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home: calculatorPage(),
    );
  }
}

class calculatorPage extends StatefulWidget {
  const calculatorPage({super.key});

  @override
  State<calculatorPage> createState() => _calculatorPageState();
}

class _calculatorPageState extends State<calculatorPage> {
  String equation = "0 ";
  String result = " 0 ";
  //String expressions = " ";

  double equationFontSize = 38.0;
  double resultfontSize = 48.0;

  Widget buildButton(String buttonText, Color buttonColor) {
    return ElevatedButton(
      onPressed: () => {buttonPressed(buttonText)},
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(16.0),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(2.0),
              ),
              side: BorderSide(
                  color: Colors.white, width: 1, style: BorderStyle.solid)),
          backgroundColor: buttonColor),
      child: Text(
        buttonText,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget clearButton(String buttonText, Color buttonColor) {
    return ElevatedButton(
      onPressed: clearDisplay,
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(16.0),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(2.0),
              ),
              side: BorderSide(
                  color: Colors.white, width: 1, style: BorderStyle.solid)),
          backgroundColor: buttonColor),
      child: Text(
        buttonText,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ),
    );
  }

  String displayText = '';

  void onButtonPressed(String text) {
    setState(() {
      displayText += text;
    });
  }

  void eraiseOption() {
    setState(() {
      displayText = displayText.substring(0, displayText.length - 1);
    });
  }

  void calculateResult() {
    setState(() {
      try {
        double result = evalExpression(displayText);
        displayText = result.toString();
      } catch (e) {
        displayText = 'Error';
      }
    });
  }

  buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == '=') {
        calculateResult();
      } else if (buttonText == '<=') {
        eraiseOption();
      } else if (buttonText == '') {
      } else {
        onButtonPressed(buttonText);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('CALCULATOR 1'),
      ),
      body: Container(
          child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(25.0),
            alignment: Alignment.bottomRight,
            child: Text(
              displayText,
              style: TextStyle(fontSize: resultfontSize),
            ),
          ),
          Expanded(
            child: Divider(),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: MediaQuery.of(context).size.width * 1,
              child: Table(
                children: [
                  TableRow(children: [
                    buildButton('9', Colors.grey),
                    buildButton('8', Colors.grey),
                    buildButton('7', Colors.grey),
                    buildButton('+', Colors.amber)
                  ])
                ],
              ),
            )
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: MediaQuery.of(context).size.width * 1,
              child: Table(
                children: [
                  TableRow(children: [
                    buildButton('6', Colors.grey),
                    buildButton('5', Colors.grey),
                    buildButton('4', Colors.grey),
                    buildButton('-', Colors.amber)
                  ])
                ],
              ),
            )
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: MediaQuery.of(context).size.width * 1,
              child: Table(
                children: [
                  TableRow(children: [
                    buildButton('3', Colors.grey),
                    buildButton('2', Colors.grey),
                    buildButton('1', Colors.grey),
                    buildButton('*', Colors.blue)
                  ])
                ],
              ),
            )
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: MediaQuery.of(context).size.width * 1,
              child: Table(
                children: [
                  TableRow(children: [
                    clearButton('C', Colors.greenAccent),
                    buildButton('0', Colors.green),
                    buildButton('=', Colors.pinkAccent),
                    buildButton('/', Color.fromARGB(255, 144, 182, 55)),
                  ])
                ],
              ),
            )
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: MediaQuery.of(context).size.width * 1,
              child: Table(
                children: [
                  TableRow(children: [
                    buildButton('%', Color.fromARGB(255, 85, 183, 183)),
                    buildButton('.', Color.fromARGB(255, 150, 49, 208)),
                    buildButton('<=', Color.fromARGB(255, 114, 33, 243)),
                    buildButton('00', const Color.fromARGB(255, 33, 243, 117)),
                  ])
                ],
              ),
            )
          ]),
        ],
      )),
    );
  }

  void clearDisplay() {
    setState(() {
      displayText = '';
    });
  }

  double evalExpression(String expression) {
    Parser p = Parser();
    ContextModel cm = ContextModel();

    Expression exp = p.parse(expression);
    return exp.evaluate(EvaluationType.REAL, cm);
  }
}
