import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaskLoginPage(),
    );
  }
}

class TaskLoginPage extends StatefulWidget {
  const TaskLoginPage({super.key});

  @override
  State<TaskLoginPage> createState() => _TaskLoginPageState();
}

class _TaskLoginPageState extends State<TaskLoginPage> {
  bool isSignUpScreen = true;
  bool isPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Container(
                child: Center(
                    child: Text(
                  "Taskugas",
                  style: TextStyle(fontSize: 30, color: Colors.green),
                )),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Center(
                  child: Text(
                    "Welcome to Taskuags",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, top: 20),
                child: Center(
                  child: Text(
                    "Sign up or login bellow to manage your ",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 152, 148, 148),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                  left: 50,
                ),
                child: Center(
                  child: Text(
                    "project, task and productivity ",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 152, 144, 144),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignUpScreen = false;
                          });
                        },
                        child: Column(
                          children: [
                            Container(
                                height: 40,
                                width: !isSignUpScreen ? 184 : 200,
                                color: !isSignUpScreen
                                    ? const Color.fromARGB(100, 184, 182, 178)
                                    : Colors.white,
                                child: Column(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: 5, bottom: 5),
                                      child: Text("LOGIN",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: !isSignUpScreen
                                                ? const Color.fromARGB(
                                                    255, 5, 56, 98)
                                                : Colors.black,
                                          )),
                                    ),
                                    if (!isSignUpScreen)
                                      Container(
                                        margin: EdgeInsets.only(top: 3),
                                        width: 197,
                                        height: 3,
                                        color: Colors.orange,
                                      ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignUpScreen = true;
                          });
                        },
                        child: Column(
                          children: [
                            Container(
                                height: 40,
                                width: isSignUpScreen ? 184 : 200,
                                color: isSignUpScreen
                                    ? const Color.fromARGB(100, 184, 182, 178)
                                    : Colors.white,
                                child: Column(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: 5, bottom: 5),
                                      child: Text("SIGNUP",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: isSignUpScreen
                                                ? const Color.fromARGB(
                                                    255, 5, 56, 98)
                                                : Colors.black,
                                          )),
                                    ),
                                    if (isSignUpScreen)
                                      Container(
                                        margin: EdgeInsets.only(top: 3),
                                        width: 197,
                                        height: 3,
                                        color: Colors.orange,
                                      ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                  if (!isSignUpScreen) buildLoginPage(),
                  if (isSignUpScreen) buildSignUpPage()
                ],
              )
            ],
          ),
        ),
      ],
    ));
  }

  Positioned buildSignUpPage() {
    return Positioned(
        height: 700,
        width: 384,
        top: 310,
        child: Container(
          color: const Color.fromARGB(100, 225, 221, 221),
          child: Center(
              child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                width: 340,
                child: buildTextField(
                    Icons.account_box, " Enter Your UserName", false, false),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 340,
                child: buildTextField(
                    Icons.email_outlined, " Enter Your Email", false, false),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: 340,
                  child: TextField(
                    obscureText: false,
                    keyboardType: isPassword
                        ? TextInputType.visiblePassword
                        : TextInputType.text,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon:
                            Icon(Icons.lock_outline, color: Colors.black),
                        suffixIcon: Icon(Icons.visibility_outlined,
                            color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(250, 221, 214, 214),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(200, 221, 214, 214),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        contentPadding: EdgeInsets.all(10),
                        hintText: "Enter Your Password",
                        hintStyle: TextStyle(
                          color: Color.fromARGB(249, 87, 85, 85),
                        )),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: 340,
                  child: TextField(
                    obscureText: false,
                    keyboardType: isPassword
                        ? TextInputType.visiblePassword
                        : TextInputType.text,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Icon(Icons.lock, color: Colors.black),
                        suffixIcon: Icon(Icons.visibility, color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(250, 221, 214, 214),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(200, 221, 214, 214),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        contentPadding: EdgeInsets.all(10),
                        hintText: "Enter Your confirm Password",
                        hintStyle: TextStyle(
                          color: Color.fromARGB(249, 87, 85, 85),
                        )),
                  )),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Icon(Icons.check_circle),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Text("At least 8 Characters"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Icon(Icons.check_circle),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Text("At least 1 Number"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Icon(Icons.check_circle),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Text("Both upper and lower case letters "),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      child: Icon(Icons.check_box_outline_blank),
                    ),
                    Container(
                        child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text(
                              "By agreeing to the terms conditions, you are entering"),
                        ),
                        Container(
                          child: Text(
                              "into a legally binding contract with the service provider"),
                        )
                      ],
                    )),
                  ],
                ),
              ),
              Container(
                  width: 340,
                  height: 40,
                  margin: EdgeInsets.only(top: 20),
                  child: TextButton(
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        primary: Colors.black,
                        backgroundColor: Color.fromARGB(
                            255, 140, 232, 20), // Background Color
                      ),
                      onPressed: () {},
                      child: Text(
                        "SignUp",
                        style: TextStyle(fontSize: 20),
                      ))),
              SizedBox(
                height: 23,
              )
            ],
          )),
        ));
  }

  Positioned buildLoginPage() {
    return Positioned(
        height: 600,
        width: 384,
        top: 310,
        child: Container(
          color: const Color.fromARGB(100, 225, 221, 221),
          child: Center(
              child: Column(
            children: [
              Container(
                height: 40,
                margin: EdgeInsets.only(top: 20),
                width: 340,
                child: buildTextButton(
                    Icons.apple, " Login with Apple", Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  child: TextButton.icon(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        minimumSize: Size(340, 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        primary: Colors.black,
                        backgroundColor: Colors.white,
                      ),
                      icon: Image.asset(
                        "images/google-logo-9808.png",
                        width: 20,
                        height: 20,
                      ),
                      label: Text("Login with Google"))),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Text("Or With Continue With Email"),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 340,
                child: buildTextField(
                    Icons.email_outlined, " Enter Your Email", false, false),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: 340,
                  child: TextField(
                    obscureText: false,
                    keyboardType: isPassword
                        ? TextInputType.visiblePassword
                        : TextInputType.text,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Icon(Icons.lock, color: Colors.black),
                        suffixIcon: Icon(Icons.visibility, color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(250, 221, 214, 214),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(200, 221, 214, 214),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        contentPadding: EdgeInsets.all(10),
                        hintText: "Enter Your Password",
                        hintStyle: TextStyle(
                          color: Color.fromARGB(249, 87, 85, 85),
                        )),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 5),
                child: Text("Forgot your Password?"),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  width: 340,
                  height: 40,
                  child: TextButton(
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        primary: Colors.black,
                        backgroundColor: Color.fromARGB(
                            255, 140, 232, 20), // Background Color
                      ),
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 20),
                      ))),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "By Signup  you agree to our",
                    style: TextStyle(letterSpacing: 2, color: Colors.grey),
                  ),
                  Text(
                    "Terms &  Conditions",
                    style: TextStyle(
                        color: Color.fromARGB(255, 100, 187, 8),
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 150),
                    child: Text("and",
                        style: TextStyle(letterSpacing: 2, color: Colors.grey)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Privacy & Policy",
                    style: TextStyle(
                        color: Color.fromARGB(255, 100, 187, 8),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
              SizedBox(
                height: 57,
              )
            ],
          )),
        ));
  }

  TextButton buildTextButton(
      IconData icon, String title, Color backgroundColor) {
    return TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          minimumSize: Size(250, 40),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          primary: Colors.black,
          backgroundColor: backgroundColor,
        ),
        child: Row(
          children: [
            SizedBox(
              width: 100,
            ),
            Icon(icon),
            Container(
              child: Center(child: Text(title)),
            )
          ],
        ));
  }

  TextField buildTextField(
      IconData icon, String hintText, bool isPassword, bool isEmail) {
    return TextField(
      obscureText: isPassword,
      keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          prefixIcon: Icon(icon, color: Colors.black),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: const Color.fromARGB(250, 221, 214, 214),
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: const Color.fromARGB(200, 221, 214, 214),
              ),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          contentPadding: EdgeInsets.all(10),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Color.fromARGB(249, 87, 85, 85),
          )),
    );
  }
}
