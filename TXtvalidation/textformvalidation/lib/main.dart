import 'package:flutter/material.dart';
//import 'package:textformvalidation/Page3.dart';
import 'package:textformvalidation/page1.dart';
//import 'package:textformvalidation/page4.dart';
//import 'package:textformvalidation/page1.dart';
//import 'package:textformvalidation/page2.dart';
//import 'package:neumorphic_button/neumorphic_button.dart';
//import 'package:textformvalidation/page1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: Colors.white, body: Page1()),
    );
  }
}

class TextValidation extends StatefulWidget {
  const TextValidation({super.key});

  @override
  State<TextValidation> createState() => _TextValidationState();
}

class _TextValidationState extends State<TextValidation> {
  final formkey = GlobalKey<FormState>();
  String name = "";
  String Password = "";
  String email = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 224, 224),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  const Text(
                    "Here to get ",
                    style: TextStyle(
                        fontSize: 30, color: Color.fromARGB(255, 52, 157, 243)),
                  ),
                  const Text(
                    "Welcomed ! ",
                    style: TextStyle(
                        fontSize: 30, color: Color.fromARGB(255, 52, 157, 243)),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Enater your name",
                    ),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                        return "Enter correct Name";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (newValue) => setState(() {
                      name = newValue!;
                    }),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Enater your number",
                    ),
                    validator: (value) {
                      if (value!.isEmpty ||
                          // ignore: valid_regexps
                          !RegExp(r'^[+]*[([0,1][0-9][1,4])][0,1][-\s\./0,9]]+$')
                              .hasMatch(value)) {
                        return "Enter correct phone Number";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (newValue) => setState(() {
                      Password = newValue!;
                    }),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Enater your email",
                    ),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[\w-\.]+@([\w-]+1)+[\w]{2,4}')
                              .hasMatch(value)) {
                        return "Enter your correct email";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (newValue) => setState(() {
                      email = newValue!;
                    }),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Sign in ",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 12, 63, 105)),
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              minimumSize: const Size(155, 40),
                              side: const BorderSide(
                                  width: 2, color: Colors.grey),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              primary: Colors.white,
                              backgroundColor: Colors.red,
                            ),
                            onPressed: () {
                              if (formkey.currentState!.validate()) {
                                final snackBar = const SnackBar(
                                    content: Text("submitting form"));
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              }
                            },
                            child: Center(
                              child: Text("Submit"),
                            )),
                      ]),
                  SizedBox(
                    height: 90,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sign in ",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 12, 63, 105)),
                      ),
                      Text(
                        "Forgot Password ",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(175, 172, 172, 1)),
                      ),
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
