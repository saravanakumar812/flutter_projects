import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

List<String> img = [
  'images/IMG_20230406_231729.jpg',
  'images/IMG_20230406_231729.jpg',
  'images/IMG-20210314-WA0014.jpg',
  'images/IMG-20210315-WA0002.jpg',
  'images/IMG_20230406_231729.jpg',
];

class _MyHomePageState extends State<MyHomePage> {
  int currentpage = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("grid_view.Custom"),
      ),
      body: Center(
          child: GridView.extent(
        maxCrossAxisExtent: 80,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.orange,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.blue,
          ),
        ],
        padding: EdgeInsets.all(10),
        shrinkWrap: true,
      )),
      bottomNavigationBar: NavigationBar(destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: 'home'),
        NavigationDestination(
            icon: Icon(Icons.radio_button_checked), label: 'shorts'),
        NavigationDestination(icon: Icon(Icons.live_tv), label: 'live'),
        NavigationDestination(
            icon: Icon(Icons.subscriptions), label: 'subscriptions'),
        NavigationDestination(icon: Icon(Icons.library_add), label: 'library')
      ]),
    );
  }
}
