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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    child: Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          Container(
                            child: Image.asset(
                              'images/pumkin.jpg',
                              width: 400,
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(bottom: 10, right: 10),
                              width: 40,
                              height: 20,
                              color: Colors.black,
                              child: Center(
                                child: Text(
                                  '03:00',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                        ]),
                  )
                ],
              ),
              Container(
                  margin: EdgeInsets.only(left: 10, top: 20, bottom: 20),
                  height: 50,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/pp4.jpg'),
                      ),
                      Column(
                        children: [
                          Text(
                            'This is video  many pumpkin TN',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            'JSK . 21k views . 1 hours ago',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
                    ],
                  )),
              Column(
                children: [
                  Container(
                    child: Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          Container(
                            child: Image.asset(
                              'images/tomato.jpg',
                              width: 400,
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(bottom: 10, right: 10),
                              width: 40,
                              height: 20,
                              color: Colors.black,
                              child: Center(
                                child: Text(
                                  '10:00',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                        ]),
                  )
                ],
              ),
              Container(
                  margin: EdgeInsets.only(left: 10, top: 20, bottom: 20),
                  height: 50,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/pp4.jpg'),
                      ),
                      Column(
                        children: [
                          Text(
                            '  Many More Andra Tomatos IM',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            'JSK . 15k views . 2 hours ago',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
                    ],
                  )),
              Column(
                children: [
                  Container(
                    child: Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          Container(
                            child: Image.asset(
                              'images/potato.jpg',
                              width: 400,
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(bottom: 10, right: 10),
                              width: 40,
                              height: 20,
                              color: Colors.black,
                              child: Center(
                                child: Text(
                                  '15:25',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                        ]),
                  )
                ],
              ),
              Container(
                  margin: EdgeInsets.only(left: 10, top: 20, bottom: 20),
                  height: 50,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/pp4.jpg'),
                      ),
                      Column(
                        children: [
                          Text(
                            'This is video  many potato  TN',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            'JSK . 10k views . 20 min ago',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
                    ],
                  )),
              Column(
                children: [
                  Container(
                    child: Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          Container(
                            child: Image.asset(
                              'images/cucumber.jpg',
                              width: 400,
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(bottom: 10, right: 10),
                              width: 40,
                              height: 20,
                              color: Colors.black,
                              child: Center(
                                child: Text(
                                  '26:04',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                        ]),
                  )
                ],
              ),
              Container(
                  margin: EdgeInsets.only(left: 10, top: 20, bottom: 20),
                  height: 50,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/pp4.jpg'),
                      ),
                      Column(
                        children: [
                          Text(
                            'This is video  many cucumber',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            'JSK . 2k views . 3 hours ago',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
                    ],
                  )),
              Column(
                children: [
                  Container(
                    child: Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          Container(
                            child: Image.asset(
                              'images/IMG-1.jpg',
                              width: 400,
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(bottom: 10, right: 10),
                              width: 40,
                              height: 20,
                              color: Colors.black,
                              child: Center(
                                child: Text(
                                  '14:25',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                        ]),
                  )
                ],
              ),
              Container(
                  margin: EdgeInsets.only(left: 10, top: 20, bottom: 20),
                  height: 50,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/pp4.jpg'),
                      ),
                      Column(
                        children: [
                          Text(
                            'This video sathragiri  in MDU',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            'JSK . 1k views . 4 hours ago',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
                    ],
                  )),
              Column(
                children: [
                  Container(
                    child: Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          Container(
                            child: Image.asset(
                              'images/IMG-2.jpg',
                              width: 400,
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(bottom: 10, right: 10),
                              width: 40,
                              height: 20,
                              color: Colors.black,
                              child: Center(
                                child: Text(
                                  '25:30',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                        ]),
                  )
                ],
              ),
              Container(
                  margin: EdgeInsets.only(left: 10, top: 20, bottom: 20),
                  height: 50,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/pp4.jpg'),
                      ),
                      Column(
                        children: [
                          Text(
                            'Beatiful Flower  Hills Sathragiri',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            'JSK . 500 views . 5 mins ago',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
                    ],
                  )),
              Column(
                children: [
                  Container(
                    child: Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          Container(
                            child: Image.asset(
                              'images/IMG-3.jpg',
                              width: 400,
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(bottom: 10, right: 10),
                              width: 40,
                              height: 20,
                              color: Colors.black,
                              child: Center(
                                child: Text(
                                  '35:01',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                        ]),
                  )
                ],
              ),
              Container(
                  margin: EdgeInsets.only(left: 10, top: 20, bottom: 20),
                  height: 50,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/pp4.jpg'),
                      ),
                      Column(
                        children: [
                          Text(
                            'Wonderful Hills  Sathragiri saral',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            'JSK . 768 views . 8 mins ago',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
