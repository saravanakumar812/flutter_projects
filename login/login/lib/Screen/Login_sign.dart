import 'package:flutter/material.dart';
import 'package:login/config/config.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isMale = true;
  bool isSignupScreen = true;
  bool isRememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnxaLo41DVakt-xR_SckaYvH_YNUWVR6S6yTOqV_dt&s"))),
                child: Container(
                  padding: EdgeInsets.only(top: 90, left: 20),
                  color: Colors.blue.withOpacity(.85),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: "Welcome to",
                              style: TextStyle(
                                  letterSpacing: 2,
                                  fontSize: 25,
                                  color: Colors.yellow[700]),
                              children: [
                            TextSpan(
                              text: isSignupScreen ? "Rizona" : "Back",
                              style: TextStyle(
                                  wordSpacing: 5,
                                  fontSize: 25,
                                  color: Colors.yellow[700],
                                  fontWeight: FontWeight.bold),
                            )
                          ])),
                      Text(
                        isSignupScreen
                            ? "Signup to Continue"
                            : "Login to Continue",
                        style: TextStyle(letterSpacing: 1, color: Colors.white),
                      )
                    ],
                  ),
                ),
              )),
          buildBottomHalfContainer(true),
          Positioned(
            top: isSignupScreen ? 200 : 230,
            child: Container(
              padding: EdgeInsets.all(20),
              height: isSignupScreen ? 400 : 280,
              width: MediaQuery.of(context).size.width - 40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 15,
                        spreadRadius: 5,
                        color: Colors.black.withOpacity(0.3))
                  ],
                  borderRadius: BorderRadius.circular(20)),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isSignupScreen = false;
                        });
                      },
                      child: Column(
                        children: [
                          Container(
                            child: Text(
                              "LOGIN",
                              style: TextStyle(
                                  color: !isSignupScreen
                                      ? Palette.activeColor
                                      : Palette.textColor2,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          if (!isSignupScreen)
                            Container(
                              margin: EdgeInsets.only(top: 3),
                              width: 55,
                              height: 3,
                              color: Colors.orange,
                            )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isSignupScreen = true;
                        });
                      },
                      child: Column(
                        children: [
                          Container(
                            child: Text(
                              "SIGNUP",
                              style: TextStyle(
                                  color: isSignupScreen
                                      ? Palette.activeColor
                                      : Palette.textColor1,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          if (isSignupScreen)
                            Container(
                              margin: EdgeInsets.only(top: 3),
                              width: 55,
                              height: 3,
                              color: Colors.orange,
                            )
                        ],
                      ),
                    )
                  ],
                ),
                if (isSignupScreen) buildSignupPage(),
                if (!isSignupScreen) buildSigninpage()
              ]),
            ),
          ),
          buildBottomHalfContainer(false),
          Positioned(
              top: MediaQuery.of(context).size.height - 120,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Text(isSignupScreen ? "Ör Signup with" : "Ör Signin with"),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      buildTextButton(Icons.facebook, "Facebook",
                          Color.fromARGB(255, 50, 6, 225)),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                          child: Row(
                        children: [
                          Container(
                              child: TextButton.icon(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    minimumSize: Size(155, 40),
                                    side: BorderSide(
                                        width: 2,
                                        color: const Color.fromARGB(
                                            200, 100, 100, 100)),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    primary: Colors.white,
                                    backgroundColor: const Color.fromARGB(
                                        255, 181, 163, 163),
                                  ),
                                  icon: Image.asset(
                                    "images/google-logo-9808.png",
                                    width: 20,
                                    height: 20,
                                  ),
                                  label: Text("Continue with google")))
                        ],
                      )),
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }

  Container buildSigninpage() {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        children: [
          buildTextField(
              Icons.email_outlined, "abcdefe@gmail.com", false, true),
          SizedBox(
            height: 20,
          ),
          buildTextField(Icons.lock_outline, "********", true, false),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: isRememberMe,
                    activeColor: Palette.textColor1,
                    onChanged: (value) {
                      setState(() {
                        isRememberMe = !isRememberMe;
                      });
                    },
                  ),
                  Text("RememberMe"),
                ],
              ),
              TextButton(onPressed: () {}, child: Text("Forgot your Password"))
            ],
          )
        ],
      ),
    );
  }

  Container buildSignupPage() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(children: [
        buildTextField(Icons.account_box_outlined, "User Name", false, false),
        SizedBox(
          height: 20,
        ),
        buildTextField(Icons.email_outlined, "email", false, false),
        SizedBox(
          height: 20,
        ),
        buildTextField(Icons.lock_outline, "Pasword", false, false),
        Padding(
          padding: EdgeInsets.only(top: 10, left: 10),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isMale = true;
                  });
                },
                child: Row(
                  children: [
                    Container(
                        width: 30,
                        height: 30,
                        margin: EdgeInsets.only(left: 20, top: 8, right: 8),
                        decoration: BoxDecoration(
                          color:
                              isMale ? Palette.textColor1 : Colors.transparent,
                          border: Border.all(
                              width: 1,
                              color: isMale
                                  ? Colors.transparent
                                  : Palette.textColor1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(
                          Icons.account_box_outlined,
                          color: isMale ? Colors.white : Palette.textColor1,
                        )),
                    Container(
                      margin: EdgeInsets.only(
                        top: 8,
                      ),
                      child: Text(
                        "Male",
                        style: TextStyle(color: Palette.textColor1),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isMale = false;
                  });
                },
                child: Row(
                  children: [
                    Container(
                        width: 30,
                        height: 30,
                        margin: EdgeInsets.only(right: 8, top: 8),
                        decoration: BoxDecoration(
                          color:
                              isMale ? Colors.transparent : Palette.textColor1,
                          border:
                              Border.all(width: 1, color: Palette.textColor1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(
                          Icons.account_box_outlined,
                          color: isMale ? Palette.textColor1 : Colors.white,
                        )),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Text(
                        "FeMale",
                        style: TextStyle(color: Palette.textColor1),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: "By Pressing 'submit' you agree to our",
                style: TextStyle(letterSpacing: 2, color: Palette.textColor1),
                children: [
                  TextSpan(
                    text: "Terms &  Conditions",
                    style: TextStyle(
                        color: Colors.yellow[700], fontWeight: FontWeight.bold),
                  )
                ])),
      ]),
    );
  }

  TextButton buildTextButton(
      IconData icon, String title, Color backgroundColor) {
    return TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          minimumSize: Size(155, 40),
          side: BorderSide(width: 2, color: Colors.grey),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          primary: Colors.white,
          backgroundColor: backgroundColor,
        ),
        child: Row(
          children: [Icon(icon), Text(title)],
        ));
  }

  Positioned buildBottomHalfContainer(bool showShadow) {
    return Positioned(
        top: isSignupScreen ? 560 : 470,
        right: 0,
        left: 0,
        child: Center(
          child: Container(
              padding: EdgeInsets.all(10),
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    if (showShadow)
                      BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 1.5,
                          color: Colors.black.withOpacity(0.3),
                          offset: Offset(0, 1)),
                  ],
                  color: Colors.white),
              child: !showShadow
                  ? Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromARGB(255, 234, 4, 4),
                              Colors.orange,
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 1,
                                color: Colors.black.withOpacity(0.3),
                                offset: Offset(0, 1)),
                          ],
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    )
                  : Center()),
        ));
  }

  TextField buildTextField(
      IconData icon, String hintText, bool isPassword, bool isEmail) {
    return TextField(
      obscureText: isPassword,
      keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
      decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Palette.iconColor,
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Palette.textColor1,
              ),
              borderRadius: BorderRadius.all(Radius.circular(35.0))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Palette.textColor1,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          contentPadding: EdgeInsets.all(10),
          hintText: hintText,
          hintStyle: TextStyle(color: Palette.textColor1)),
    );
  }
}
