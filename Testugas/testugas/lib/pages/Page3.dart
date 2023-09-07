import 'package:flutter/material.dart';
import 'package:testugas/pages/Page4.dart';
//import 'package:testugas/pages/Page2.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Container(
            child: Center(
              child: Text(
                "Tasktugas",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://e1.pxfuel.com/desktop-wallpaper/586/209/desktop-wallpaper-1k-minimal-plant-white-plants-thumbnail.jpg"))),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Center(
              child: Text(
                "Easy task Creation",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text(
              "Quickly add tasks, set due dates and add",
              style: TextStyle(fontSize: 15),
            ),
          ),
          Container(
            child: Text(
              "descriptions with ease using our task manager app.",
              style: TextStyle(fontSize: 15),
            ),
          ),
          Container(
            child: Text(
              "Simply your workflow and stay organized ",
              style: TextStyle(fontSize: 15),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              width: 340,
              height: 50,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Sign in",
                  style: TextStyle(fontSize: 20),
                ),
                style: TextButton.styleFrom(
                    primary: Colors.black,
                    backgroundColor: const Color.fromARGB(190, 19, 204, 26)),
              )),
          SizedBox(
            height: 20,
          ),
          Container(
              width: 340,
              height: 50,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (Context) => Page4()));
                },
                child: Text(
                  "Sign up",
                  style: TextStyle(fontSize: 20),
                ),
                style: TextButton.styleFrom(
                    side:
                        BorderSide(color: const Color.fromARGB(65, 97, 93, 93)),
                    primary: Colors.black,
                    backgroundColor: Colors.white),
              ))
        ],
      ),
    );
  }
}
