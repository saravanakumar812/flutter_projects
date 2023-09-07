import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.email, required this.password});

  final String email;
  final String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        body: Column(
          children: [
            Center(
              child: Text(email),
            ),
            Center(
              child: Text(password),
            )
          ],
        ));
  }
}
