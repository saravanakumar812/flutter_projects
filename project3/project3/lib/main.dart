import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: DrawerApp(),
    );
  }
}

class DrawerApp extends StatefulWidget {
  const DrawerApp({super.key});

  @override
  State<DrawerApp> createState() => _DrawerAppState();
}

class _DrawerAppState extends State<DrawerApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Project 3"),
      ),
      drawer: Drawer(
        child: Column(children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: Colors.blue[50],
            ),
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 20, top: 20),
                  child: Image.asset(
                    "images/icon-person-4.jpg",
                    width: 50,
                    height: 100,
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Balaji Dayalan",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "000 007",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 75,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Image.asset(
                "images/home.png",
                width: 30,
                height: 30,
                color: Colors.black,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Home",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Image.asset(
                "images/company.png",
                width: 30,
                height: 30,
                color: Colors.black,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Company Profile",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Image.asset(
                "images/checkcircle.png",
                width: 30,
                height: 30,
                color: Colors.black,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Attendence",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Image.asset(
                "images/phone.png",
                width: 30,
                height: 30,
                color: Colors.black,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Leave",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Image.asset(
                "images/medical.png",
                width: 30,
                height: 30,
                color: Colors.black,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Medical",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Image.asset(
                "images/loan.png",
                width: 30,
                height: 30,
                color: Colors.black,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Loan",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Image.asset(
                "images/rupee.png",
                width: 30,
                height: 30,
                color: Colors.black,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Payslip",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Image.asset(
                "images/hand.png",
                width: 30,
                height: 30,
                color: Colors.black,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "View All Suggestions",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Image.asset(
                "images/visibility.png",
                width: 30,
                height: 30,
                color: Colors.black,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "View All Employee",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Image.asset(
                "images/documents.png",
                width: 30,
                height: 30,
                color: Colors.black,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Documents",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Image.asset(
                "images/learning.png",
                width: 30,
                height: 30,
                color: Colors.black,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Learning",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Image.asset(
                "images/gallery.png",
                width: 30,
                height: 30,
                color: Colors.black,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Gallery",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Image.asset(
                "images/any.png",
                width: 30,
                height: 30,
                color: Colors.black,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Help Desk",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
