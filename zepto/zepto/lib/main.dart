import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zepto/pages/Sliderpage.dart';
import 'package:zepto/pages/details_page.dart';
import 'package:zepto/pages/exCatogories.dart';
import 'package:zepto/pages/explorepage.dart';
import 'package:zepto/pages/offerpartPage.dart';
import 'package:zepto/pages/pageoffer.dart';
import 'package:zepto/pages/searchboxpage.dart';

void main() {
  runApp(ZeptoApp());
}

class ZeptoApp extends StatelessWidget {
  const ZeptoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Zeptopage(),
    );
  }
}

class Zeptopage extends StatefulWidget {
  const Zeptopage({super.key});

  @override
  State<Zeptopage> createState() => _ZeptopageState();
}

class _ZeptopageState extends State<Zeptopage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ZEPTO'), actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.wallet)),
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        IconButton(onPressed: () {}, icon: Icon(Icons.person))
      ]),
      body: Container(
          child: SingleChildScrollView(
        child: Column(verticalDirection: VerticalDirection.down, children: [
          OfferPage(),
          SizedBox(
            height: 20,
          ),
          SearchBox(),
          SizedBox(
            height: 20,
          ),
          Container(margin: EdgeInsets.all(20), child: SliderPage()),
          SizedBox(
            height: 20,
          ),
          ExplorePage(),
          SizedBox(
            height: 20,
          ),
          Catogories(),
          Details(),
          SizedBox(
            height: 20,
          ),
          PageOffer()
        ]),
      )),
    );
  }
}
