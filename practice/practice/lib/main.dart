import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:practice/pages/Myhomepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      home: MyHomePage(),
    );
  }
}

// task1
class myHomePage extends StatefulWidget {
  const myHomePage({super.key});

  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  var title = " App bar class";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: Icon(Icons.menu_book),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  title = "Task1";
                });
              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                setState(() {
                  title = "Task2";
                });
              },
              icon: Icon(Icons.notification_important))
        ],
      ),
      body: Center(
        child: Text(title),
      ),
    );
  }
}

// task2

class myfirstPage extends StatefulWidget {
  const myfirstPage({Key? key}) : super(key: key);

  @override
  State<myfirstPage> createState() => _myfirstPageState();
}

class _myfirstPageState extends State<myfirstPage> {
  var title = "App Bar class";

  var firstText = "please enter some value";
  var secondText = "please enter some value";

  var firstTextfield = TextEditingController();

  var secondTextField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                setState(() {
                  title = "Greens Tech";
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                setState(() {
                  title = "Flutter class";
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                setState(() {
                  title = "Welcome";
                });
              },
            )
          ],
          leading: Icon(Icons.menu),
          centerTitle: false,
          title: Text(title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(firstText),
              Text(secondText),
              SizedBox(
                height: 10,
              ),

              // textfield
              TextField(
                controller: firstTextfield,
              ),
              TextField(
                controller: secondTextField,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      firstText = firstTextfield.text;
                    });
                  },
                  child: Text("Tap Me One")),
              TextButton(
                  onPressed: () {
                    setState(() {
                      secondText = secondTextField.text;
                    });
                  },
                  child: Text("Tap Me Two"))
            ],
          ),
        ));
  }
}
