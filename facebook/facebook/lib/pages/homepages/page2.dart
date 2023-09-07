import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Container(
          margin: EdgeInsets.only(top: 10, bottom: 10, right: 5, left: 5),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    right: 5,
                  ),
                  width: 130,
                  height: 200,
                  color: Colors.amber,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Card(
                              child: Column(
                            children: [
                              Container(),
                            ],
                          )),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 130,
                  height: 200,
                  color: Colors.amber,
                  margin: EdgeInsets.only(
                    right: 5,
                  ),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Card(
                              child: Column(
                            children: [
                              Container(),
                            ],
                          )),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 130,
                  height: 200,
                  color: Colors.amber,
                  margin: EdgeInsets.only(
                    right: 5,
                  ),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Card(
                              child: Column(
                            children: [
                              Container(),
                            ],
                          )),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 130,
                  height: 200,
                  color: Colors.amber,
                  margin: EdgeInsets.only(
                    right: 5,
                  ),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Card(
                              child: Column(
                            children: [
                              Container(),
                            ],
                          )),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 130,
                  height: 200,
                  color: Colors.amber,
                  margin: EdgeInsets.only(
                    right: 5,
                  ),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Card(
                              child: Column(
                            children: [
                              Container(),
                            ],
                          )),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ))
    ]));
  }
}
