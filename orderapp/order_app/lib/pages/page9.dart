import 'package:flutter/material.dart';

class Page9 extends StatefulWidget {
  const Page9({super.key});

  @override
  State<Page9> createState() => _Page9State();
}

class _Page9State extends State<Page9> {
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
                  'Exclusive offer',
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
                                      child: Image.asset('images/bananas.jpg'),
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
                                      child: Image.asset('images/bananas.jpg'),
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
                                      child: Image.asset('images/bananas.jpg'),
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
                                      child: Image.asset('images/bananas.jpg'),
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
                                      child: Image.asset('images/bananas.jpg'),
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
                    ],
                  )))
        ],
      ),
    );
  }
}
