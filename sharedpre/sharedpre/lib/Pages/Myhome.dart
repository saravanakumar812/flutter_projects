import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharedpre/Pages/home.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () async {
            final SharedPreferences prefs =
                await SharedPreferences.getInstance();
            await prefs.setBool('isLoggedIn', true); //save
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => SecPage()));
          },
          child: Text('Log in'),
        ),
      ),
    );
  }
}
