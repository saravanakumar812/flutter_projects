import 'package:flutter/material.dart';
import 'package:sharedpre/Pages/Myhome.dart';
//import 'package:sharedpre/Pages/home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharedpre/Pages/home.dart';

class Spalsh extends StatefulWidget {
  const Spalsh({super.key});

  @override
  State<Spalsh> createState() => _SpalshState();
}

class _SpalshState extends State<Spalsh> {
  @override
  void initState() {
    super.initState();
    navigatetohome();
  }

  navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 5500), () async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      final bool? counter = prefs.getBool("isLoggedIn");
      if (counter == true) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MyHomePage()));
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SecPage()));
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.grey,
      child: Center(
        child: Container(
          child: Text("Splash Screen"),
        ),
      ),
    ));
  }
}
