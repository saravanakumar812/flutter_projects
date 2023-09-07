import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharedpre/Pages/Myhome.dart';

class SecPage extends StatefulWidget {
  const SecPage({super.key});

  @override
  State<SecPage> createState() => _SecPageState();
}

class _SecPageState extends State<SecPage> {
  var value = '';
  bool isScreenPage = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sec Page'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
          child: TextButton(
              onPressed: () async {
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                await prefs.setBool('isLoggedIn', false);

                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
              child: Text('Log out'))),
    );
  }
}
