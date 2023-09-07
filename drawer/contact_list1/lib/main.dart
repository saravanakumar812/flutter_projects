//import 'dart:js';

import 'package:contact_list1/task1_page.dart';
import 'package:contact_list1/task2_page.dart';
import 'package:contact_list1/task3_page.dart';
import 'package:contact_list1/task4_page.dart';
import 'package:contact_list1/task5_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(DraWableApp());
}

class DraWableApp extends StatelessWidget {
  const DraWableApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: DrawApp(),
    );
  }
}

class DrawApp extends StatefulWidget {
  const DrawApp({super.key});

  @override
  State<DrawApp> createState() => _DrawAppState();
}

class _DrawAppState extends State<DrawApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Draw Table'),
      ),
      body: Container(
        child: Center(
          child: Text(
            'Welcome to drawer and endDrawer',
            style: TextStyle(fontSize: 15),
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Saravanakumar J',
              style: TextStyle(fontSize: 20),
            ),
            accountEmail: Text('jaisaravana812@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('images/IMG_1.jpg'),
            ),
            otherAccountsPictures: [
              CircleAvatar(
                backgroundImage: AssetImage('images/IMG-2.jpg'),
              )
            ],
          ),
          ExpansionTile(
            title: Text(
              'Subject',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text('Select Subject'),
            leading: Icon(Icons.subject),
            children: [
              ListTile(
                title: Text('Dart'),
              ),
              ListTile(
                title: Text('Flutter'),
              ),
            ],
          ),
          ListTile(
            title: Text(
              'Notification',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text('See Notification'),
            leading: Icon(Icons.notifications),
          ),
          ListTile(
            title: Text(
              'Settings',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text('Go to Settings'),
            leading: Icon(Icons.settings),
          ),
          ListTile(
            title: Text(
              'About',
              style: TextStyle(fontSize: 20),
            ),
            leading: Icon(Icons.info),
            onTap: () {},
          ),
        ]),
      ),
      endDrawer: Drawer(
        child: Column(children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Saravanakumar J',
              style: TextStyle(fontSize: 20),
            ),
            accountEmail: Text('jaisaravana812@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('images/IMG-3.jpg'),
            ),
          ),
          ListTile(
            title: const Text(
              'Task1',
              style: const TextStyle(fontSize: 20),
            ),
            leading: Icon(Icons.check_circle_outline_rounded),
            onTap: () {
              navigateTo(context, Task1());
            },
          ),
          ListTile(
            title: Text(
              'Task2',
              style: TextStyle(fontSize: 20),
            ),
            leading: Icon(Icons.check_circle_outline_rounded),
            onTap: () {
              navigateTo(context, Task2());
            },
          ),
          ListTile(
            title: Text(
              'Task3',
              style: TextStyle(fontSize: 20),
            ),
            leading: Icon(Icons.check_circle_outline_rounded),
            onTap: () {
              navigateTo(context, Task3());
            },
          ),
          ListTile(
            title: Text(
              'Task4',
              style: TextStyle(fontSize: 20),
            ),
            leading: Icon(Icons.check_circle_outline_rounded),
            onTap: () {
              navigateTo(context, Task4());
            },
          ),
          ListTile(
            title: Text(
              'Task5',
              style: TextStyle(fontSize: 20),
            ),
            leading: Icon(Icons.check_circle_outline_rounded),
            onTap: () {
              navigateTo(context, Task5());
            },
          ),
        ]),
      ),
    );
  }

  navigateTo(context, route) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => route,
      ),
    );
  }
}
