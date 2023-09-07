import 'package:flutter/material.dart';

class Page8 extends StatefulWidget {
  const Page8({super.key});

  @override
  State<Page8> createState() => _Page8State();
}

class _Page8State extends State<Page8> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                child: Text(
                  'Best Sellings',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                width: 80,
              ),
              Container(
                child: Text(
                  'See all>',
                  style: TextStyle(fontSize: 20, color: Colors.purple),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 300,
                        height: 370,
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Card(
                                    child: Column(
                                  children: [
                                    Container(
                                      child: Image.asset(
                                        'images/red apples.jpg',
                                        height: 170,
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Red Apples',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text('3pcs'),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                        child: Row(
                                      children: [
                                        Container(
                                          child: Text('RS.4.99'),
                                        ),
                                        SizedBox(
                                          width: 190,
                                        ),
                                        Container(
                                          child: Text(
                                            '+',
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        )
                                      ],
                                    ))
                                  ],
                                )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 300,
                        height: 370,
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Card(
                                    child: Column(
                                  children: [
                                    Container(
                                      child: Image.asset(
                                        'images/vegetables1.jpg',
                                        height: 170,
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Vegetables',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text('1kg'),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                        child: Row(
                                      children: [
                                        Container(
                                          child: Text('RS.3.99'),
                                        ),
                                        SizedBox(
                                          width: 190,
                                        ),
                                        Container(
                                          child: Text(
                                            '+',
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        )
                                      ],
                                    ))
                                  ],
                                )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        width: 300,
                        height: 370,
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Card(
                                    child: Column(
                                  children: [
                                    Container(
                                      child: Image.asset(
                                        'images/bananas.jpg',
                                        height: 170,
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Organic Bananas',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text('7pcs'),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                        child: Row(
                                      children: [
                                        Container(
                                          child: Text('RS.4.99'),
                                        ),
                                        SizedBox(
                                          width: 190,
                                        ),
                                        Container(
                                          child: Text(
                                            '+',
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        )
                                      ],
                                    ))
                                  ],
                                )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 300,
                        height: 370,
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Card(
                                    child: Column(
                                  children: [
                                    Container(
                                      child: Image.asset(
                                        'images/carrot1.png',
                                        height: 170,
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Carrots',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text('1kg'),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                        child: Row(
                                      children: [
                                        Container(
                                          child: Text('RS.2.99'),
                                        ),
                                        SizedBox(
                                          width: 190,
                                        ),
                                        Container(
                                          child: Text(
                                            '+',
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        )
                                      ],
                                    ))
                                  ],
                                )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 300,
                        height: 370,
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Card(
                                    child: Column(
                                  children: [
                                    Container(
                                      child: Image.asset(
                                        'images/dry fruits2.jpg',
                                        height: 170,
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Dry Fruits',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text('3pcs'),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                        child: Row(
                                      children: [
                                        Container(
                                          child: Text('RS.6.99'),
                                        ),
                                        SizedBox(
                                          width: 190,
                                        ),
                                        Container(
                                          child: Text(
                                            '+',
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        )
                                      ],
                                    ))
                                  ],
                                )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )))
        ],
      ),
    );
  }
}
