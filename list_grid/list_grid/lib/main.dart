import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:list_grid/pages/bragoli_page.dart';
import 'package:list_grid/pages/carrot_page.dart';
import 'package:list_grid/pages/cucumber_page.dart';
import 'package:list_grid/pages/galiflower_page.dart';
import 'package:list_grid/pages/onion_page.dart';
import 'package:list_grid/pages/potato_page.dart';
import 'package:list_grid/pages/pumpkin_page.dart';
import 'package:list_grid/pages/tomato_page.dart';

void main() {
  runApp(const ListGrid());
}

class ListGrid extends StatelessWidget {
  const ListGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.grey),
      home: const ListGridPage(),
    );
  }
}

class ListGridPage extends StatefulWidget {
  const ListGridPage({super.key});

  @override
  State<ListGridPage> createState() => _ListGridPageState();
}

class _ListGridPageState extends State<ListGridPage> {
  List<String> img = [
    'images/bragoli.jpg',
    'images/carrot.jpg',
    'images/cucumber.jpg',
    'images/IMG-20210315-WA0002.jpg',
    'images/IMG_20230406_231729.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: const Text('ListGridView'),
              bottom: const TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  tabs: [
                    Tab(
                      text: 'List',
                    ),
                    Tab(
                      text: 'Grid',
                    ),
                  ]),
            ),
            body: TabBarView(children: [
              Container(
                child: ListView(padding: const EdgeInsets.all(20), children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 30),
                        child: CircleAvatar(
                            backgroundImage: AssetImage('images/onion.jpg'),
                            radius: 30),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          padding: EdgeInsets.all(10),
                          child: TextButton(
                            onPressed: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Info'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () => Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Onion())),
                                    child: const Text('More Info'),
                                  ),
                                ],
                              ),
                            ),
                            child: const Text(
                              'Onion',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          )),
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 30),
                        child: CircleAvatar(
                            backgroundImage: AssetImage('images/tomato.jpg'),
                            radius: 30),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          padding: EdgeInsets.all(10),
                          child: TextButton(
                            onPressed: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Info'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () => Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => tomato())),
                                    child: const Text('More Info'),
                                  ),
                                ],
                              ),
                            ),
                            child: const Text(
                              'Tomato',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          )),
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 30),
                        child: CircleAvatar(
                            backgroundImage: AssetImage('images/cucumber.jpg'),
                            radius: 30),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          padding: EdgeInsets.all(10),
                          child: TextButton(
                            onPressed: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Info'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () => Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => cucumber())),
                                    child: const Text('More Info'),
                                  ),
                                ],
                              ),
                            ),
                            child: const Text(
                              'Cucumber',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          )),
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 30),
                        child: CircleAvatar(
                            backgroundImage: AssetImage('images/pumkin.jpg'),
                            radius: 30),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          padding: EdgeInsets.all(10),
                          child: TextButton(
                            onPressed: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Info'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () => Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => pumpkin())),
                                    child: const Text('More Info'),
                                  ),
                                ],
                              ),
                            ),
                            child: const Text(
                              'Pumkin',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          )),
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 30),
                        child: CircleAvatar(
                            backgroundImage: AssetImage('images/carrot.jpg'),
                            radius: 30),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          padding: EdgeInsets.all(10),
                          child: TextButton(
                            onPressed: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Info'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () => Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => carrot())),
                                    child: const Text('More Info'),
                                  ),
                                ],
                              ),
                            ),
                            child: const Text(
                              'Carrot',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          )),
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 30),
                        child: CircleAvatar(
                            backgroundImage: AssetImage('images/potato.jpg'),
                            radius: 30),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          padding: EdgeInsets.all(10),
                          child: TextButton(
                            onPressed: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Info'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () => Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => potato())),
                                    child: const Text('More Info'),
                                  ),
                                ],
                              ),
                            ),
                            child: const Text(
                              'Potato',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          )),
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 30),
                        child: CircleAvatar(
                            backgroundImage:
                                AssetImage('images/galiflower.jpg'),
                            radius: 30),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          padding: EdgeInsets.all(10),
                          child: TextButton(
                            onPressed: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Info'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () => Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                galiflower())),
                                    child: const Text('More Info '),
                                  ),
                                ],
                              ),
                            ),
                            child: const Text(
                              'GaliFlower',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          )),
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 30),
                        child: CircleAvatar(
                            backgroundImage: AssetImage('images/brogoli.jpg'),
                            radius: 30),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          padding: EdgeInsets.all(10),
                          child: TextButton(
                            onPressed: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Info'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () => Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => bragoli())),
                                    child: const Text('More Info'),
                                  ),
                                ],
                              ),
                            ),
                            child: const Text(
                              'BraGoli',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          )),
                    ],
                  ),
                ]),
              ),
              Container(
                child: GridView.count(
                  scrollDirection: Axis.vertical,
                  crossAxisCount: 2,
                  children: [
                    Column(
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: 20),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/brogoli.jpg'),
                              radius: 50,
                            )),
                        Container(
                            padding: EdgeInsets.all(10),
                            child: TextButton(
                              onPressed: () => showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: const Text('Info'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      bragoli())),
                                      child: const Text('More Info'),
                                    ),
                                  ],
                                ),
                              ),
                              child: const Text(
                                'BraGoli',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: 20),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/carrot.jpg'),
                              radius: 50,
                            )),
                        Container(
                            padding: EdgeInsets.all(10),
                            child: TextButton(
                              onPressed: () => showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: const Text('Info'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      carrot())),
                                      child: const Text('More Info'),
                                    ),
                                  ],
                                ),
                              ),
                              child: const Text(
                                'Carrot',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: 20),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('images/cucumber.jpg'),
                              radius: 50,
                            )),
                        Container(
                            padding: EdgeInsets.all(10),
                            child: TextButton(
                              onPressed: () => showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: const Text('Info'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      cucumber())),
                                      child: const Text('More Info'),
                                    ),
                                  ],
                                ),
                              ),
                              child: const Text(
                                'Cucumber',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: 20),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('images/galiflower.jpg'),
                              radius: 50,
                            )),
                        Container(
                            padding: EdgeInsets.all(10),
                            child: TextButton(
                              onPressed: () => showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: const Text('Info'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      galiflower())),
                                      child: const Text('More Info'),
                                    ),
                                  ],
                                ),
                              ),
                              child: const Text(
                                'GaliFlower',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: 20),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/onion.jpg'),
                              radius: 50,
                            )),
                        Container(
                            padding: EdgeInsets.all(10),
                            child: TextButton(
                              onPressed: () => showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: const Text('Info'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Onion())),
                                      child: const Text('More Info'),
                                    ),
                                  ],
                                ),
                              ),
                              child: const Text(
                                'onion',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: 20),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/potato.jpg'),
                              radius: 50,
                            )),
                        Container(
                            padding: EdgeInsets.all(10),
                            child: TextButton(
                              onPressed: () => showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: const Text('Info'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      potato())),
                                      child: const Text('More Info'),
                                    ),
                                  ],
                                ),
                              ),
                              child: const Text(
                                'potato',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: 20),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/pumkin.jpg'),
                              radius: 50,
                            )),
                        Container(
                            padding: EdgeInsets.all(10),
                            child: TextButton(
                              onPressed: () => showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: const Text('Info'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      pumpkin())),
                                      child: const Text('More Info'),
                                    ),
                                  ],
                                ),
                              ),
                              child: const Text(
                                'Pumpkin',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: 20),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/tomato.jpg'),
                              radius: 50,
                            )),
                        Container(
                            padding: EdgeInsets.all(10),
                            child: TextButton(
                              onPressed: () => showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: const Text('Info'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      tomato())),
                                      child: const Text('More Info'),
                                    ),
                                  ],
                                ),
                              ),
                              child: const Text(
                                'Tomato',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
              )
            ])));
  }
}
