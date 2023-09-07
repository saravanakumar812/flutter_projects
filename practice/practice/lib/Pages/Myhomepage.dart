import 'package:flutter/material.dart';
import 'package:practice/pages/Appbar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.message,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: '')
        ]),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              child: Text(
                                "Hi, jared !",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "23 june, 2023",
                              style: TextStyle(color: Colors.blue[200]),
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.circular(12)),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Search",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "How do you feel? ",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                  color: Colors.blue[600],
                                  borderRadius: BorderRadius.circular(12)),
                              child: Icon(
                                Icons.beach_access_outlined,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "beauty",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                  color: Colors.blue[600],
                                  borderRadius: BorderRadius.circular(12)),
                              child: Icon(
                                Icons.radar,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "fine",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                  color: Colors.blue[600],
                                  borderRadius: BorderRadius.circular(12)),
                              child: Icon(
                                Icons.radio,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "happy",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                  color: Colors.blue[600],
                                  borderRadius: BorderRadius.circular(12)),
                              child: Icon(
                                Icons.access_time_filled,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Expanded",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(25),
                      color: Colors.grey[200],
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "Exercises",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Icon(Icons.more_horiz),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Expanded(
                              child: ListView(
                            children: [
                              MyWidget(
                                  icon: (Icons.favorite),
                                  exerciseName: "Speakling Skills",
                                  color: Colors.orange,
                                  Numbers: 10),
                              MyWidget(
                                  icon: (Icons.person),
                                  exerciseName: "Writting Skills",
                                  color: Colors.green,
                                  Numbers: 10),
                              MyWidget(
                                  icon: (Icons.star),
                                  exerciseName: "Reading Skills",
                                  color: Colors.blue,
                                  Numbers: 10),
                              MyWidget(
                                  icon: (Icons.account_box),
                                  exerciseName: "Learning Skills",
                                  color: Colors.redAccent,
                                  Numbers: 10),
                            ],
                          ))
                        ],
                      )))
            ],
          ),
        ));
  }
}
