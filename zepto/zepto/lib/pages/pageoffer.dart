import 'package:flutter/material.dart';

class PageOffer extends StatefulWidget {
  const PageOffer({super.key});

  @override
  State<PageOffer> createState() => _PageOfferState();
}

class _PageOfferState extends State<PageOffer> {
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
                        width: 160,
                        height: 160,
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Card(
                                    child: Column(
                                  children: [
                                    Container(
                                      child: Text('banana'),
                                    ),
                                    Container(
                                      child: Text('banana'),
                                    ),
                                    Container(
                                      child: Text('banana'),
                                    ),
                                    Container(
                                      child: Text('banana'),
                                    )
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
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Card(
                                    child: Column(
                                  children: [
                                    Container(
                                      child: Text('banana'),
                                    ),
                                    Container(
                                      child: Text('banana'),
                                    ),
                                    Container(
                                      child: Text('banana'),
                                    )
                                  ],
                                )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Card(
                                    child: Column(
                                  children: [
                                    Container(
                                      child: Text('banana'),
                                    ),
                                    Container(
                                      child: Text('banana'),
                                    ),
                                    Container(
                                      child: Text('banana'),
                                    )
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
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Card(
                                    child: Column(
                                  children: [
                                    Container(
                                      child: Text('banana'),
                                    ),
                                    Container(
                                      child: Text('banana'),
                                    ),
                                    Container(
                                      child: Text('banana'),
                                    )
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
