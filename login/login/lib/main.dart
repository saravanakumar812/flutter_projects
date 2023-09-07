//import 'dart:convert';

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
//import 'package:login/login.dart';
//import 'package:http/http.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpScreen(),
    );
  }
}

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<Map<String, dynamic>> _login() async {
    // final String username = usernameController.text;
    // final String password = passwordController.text;
    Map<String, dynamic> users;

    final Map<String, dynamic> data = {
      "json": {
        'username': "balaji",
        'password': "balaji",
      }
    };

    final Uri url = Uri.parse(
        'https://clubits-hrms-demo.azurewebsites.net/trpc/user.signIn');

    final response = await http.post(
      url,
      body: json.encode(data),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseBody = json.decode(response.body);

      print("login successfully");
      users = responseBody["result"]["data"]["json"];
      print("Data : " + users.toString());
    } else {
      throw Exception('Failed.');
    }
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        color: Colors.blue,
                        width: 15,
                        height: 10,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Container(
                        color: Colors.blue,
                        width: 30,
                        height: 20,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Container(
                        color: Colors.blue,
                        width: 20,
                        height: 15,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 3),
                          color: Colors.blue,
                          width: 25,
                          height: 15,
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          color: Colors.blue,
                          width: 30,
                          height: 25,
                        ),
                        SizedBox(
                          height: 3,
                        ),
                      ])
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  "LOGIN",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "User Name  ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 200,
                    child: TextFormField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3,
                              color: Color.fromARGB(255, 112, 114, 113)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3,
                              color: Color.fromARGB(255, 112, 114, 113)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Password  ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 200,
                    child: TextFormField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3,
                              color: Color.fromARGB(255, 112, 114, 113)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3,
                              color: Color.fromARGB(255, 112, 114, 113)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 150,
                child: TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(15),
                      minimumSize: Size(115, 40),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.black, // your color here
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      primary: Colors.white,
                      backgroundColor: const Color.fromARGB(65, 66, 67, 68),
                    ),
                    onPressed: () {
                      _login();
                    },
                    child: Center(
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
