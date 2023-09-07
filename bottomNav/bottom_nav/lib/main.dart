import 'package:bottom_nav/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() async {
  runApp(BottomNav());
}

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: BottomNavPage(),
    );
  }
}

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

var selectedIndex = 1;
var pageList = [
  HomePage(),
  Center(
    child: Text('subscribtions'),
  ),
  Center(
    child: Text('live Video'),
  ),
  Center(
    child: Text('shorts'),
  ),
  Center(
    child: Text('library'),
  ),
];

class _BottomNavPageState extends State<BottomNavPage> {
  ontap(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ZEPTO',
          selectionColor: Colors.white,
        ),
        backgroundColor: Colors.purple,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.wallet)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        ],
      ),
      body: pageList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: ontap,
          currentIndex: selectedIndex,
          fixedColor: Color.fromARGB(255, 239, 78, 8),
          useLegacyColorScheme: true,
          unselectedItemColor: Colors.blue,
          selectedIconTheme: IconThemeData(size: 25),
          unselectedIconTheme: IconThemeData(size: 25),
          selectedFontSize: 20,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedLabelStyle: TextStyle(fontSize: 15),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(
                //backgroundColor: Colors.amber,
                icon: Icon(Icons.subscriptions),
                label: 'subscriptions'),
            BottomNavigationBarItem(
                // backgroundColor: Colors.blue,
                icon: Icon(Icons.live_tv_outlined),
                label: 'live'),
            BottomNavigationBarItem(
                icon: Icon(Icons.short_text), label: 'shorts'),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_books), label: 'library'),
          ]),
    );
  }
}
