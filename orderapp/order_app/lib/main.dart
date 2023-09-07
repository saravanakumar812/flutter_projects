import 'package:flutter/material.dart';
//import 'package:order_app/pages/Page4.dart';
import 'package:order_app/pages/Page5.dart';
import 'package:order_app/pages/Page6.dart';
import 'package:order_app/pages/page1.dart';
import 'package:order_app/pages/page2.dart';
import 'package:order_app/pages/page3.dart';
import 'package:order_app/pages/page7.dart';
import 'package:order_app/pages/page8.dart';
import 'package:order_app/pages/page9.dart';

void main() {
  runApp(OrderApp());
}

class OrderApp extends StatelessWidget {
  const OrderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OrderAppPage(),
    );
  }
}

class OrderAppPage extends StatefulWidget {
  const OrderAppPage({super.key});

  @override
  State<OrderAppPage> createState() => _OrderAppPageState();
}

class _OrderAppPageState extends State<OrderAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.purple,
            title: Text('ZEPTO'),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.wallet)),
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: Icon(Icons.person))
            ]),
        body: Container(
            child: SingleChildScrollView(
          child: Column(verticalDirection: VerticalDirection.down, children: [
            Page1(),
            SizedBox(
              height: 20,
            ),
            Page2(),
            SizedBox(
              height: 20,
            ),
            Container(margin: EdgeInsets.all(20), child: Page3()),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
            ),
            Page5(),
            SizedBox(
              height: 20,
            ),
            page6(),
            SizedBox(
              height: 20,
            ),
            Page7(),
            SizedBox(
              height: 20,
            ),
            Page8(),
            SizedBox(
              height: 20,
            ),
            Page9()
          ]),
        )));
  }
}
