import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dashboard/Widgets/Appbar.dart';
import 'package:dashboard/Widgets/Categories.dart';
import 'package:dashboard/Widgets/items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // appbar
          Appbar(),
          // search bar
          Container(
            //height: 500,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 222, 217, 217),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    children: [
                      Container(
                        width: 267,
                        height: 50,
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search here..."),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.camera_alt,
                        size: 27,
                        color: Colors.blue[500],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Categories",
                    style: TextStyle(
                        fontSize: 25,
                        color: const Color.fromARGB(255, 8, 39, 75),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                //catogories
                Categories(),
                // items bar

                Container(
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Best Sellings",
                    style: TextStyle(
                        fontSize: 25,
                        color: const Color.fromARGB(255, 6, 67, 117),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                ItemSelling(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
          color: Color.fromARGB(255, 16, 117, 199),
          backgroundColor: Colors.transparent,
          height: 70,
          onTap: (index) {},
          items: [
            Icon(
              Icons.home,
              color: Colors.white,
              size: 30,
            ),
            Icon(
              CupertinoIcons.cart_fill,
              color: Colors.white,
              size: 30,
            ),
            Icon(
              Icons.list,
              color: Colors.white,
              size: 30,
            ),
          ]),
    );
  }
}
