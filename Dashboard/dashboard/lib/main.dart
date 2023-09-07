import 'package:dashboard/Pages/Homepage.dart';
import 'package:dashboard/Pages/cartpage.dart';
import 'package:dashboard/Pages/itemPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
        "/": (context) => HomePage(),
        "CartName": (context) => CartPage(),
        "ItemName": (context) => ItemPage()
      },
    );
  }
}
