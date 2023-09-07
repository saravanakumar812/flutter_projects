import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_rent/designs/menu.dart';

import 'package:home_rent/utlis.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeRent(),
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class HomeRent extends StatefulWidget {
  const HomeRent({super.key});

  @override
  State<HomeRent> createState() => _HomeRentState();
}

class _HomeRentState extends State<HomeRent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Scene(),
      ),
    );
  }
}
