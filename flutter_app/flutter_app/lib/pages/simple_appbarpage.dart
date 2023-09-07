import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
          useMaterial3: true,
        ),
        home: simpleAppbarpPage());
  }
}

class simpleAppbarpPage extends StatefulWidget {
  const simpleAppbarpPage({super.key});

  @override
  State<simpleAppbarpPage> createState() => _simpleAppbarpPageState();
}

class _simpleAppbarpPageState extends State<simpleAppbarpPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
