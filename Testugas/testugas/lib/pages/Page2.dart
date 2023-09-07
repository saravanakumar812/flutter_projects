import 'package:flutter/material.dart';
import 'package:testugas/pages/Page3.dart';
//import 'package:testugas/pages/Page2.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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
                "User-friendly at its Core",
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
              "DIscover the essense of user-friendliness as our",
              style: TextStyle(fontSize: 15),
            ),
          ),
          Container(
            child: Text(
              "interface empowers you with intuitive controls and",
              style: TextStyle(fontSize: 15),
            ),
          ),
          Container(
            child: Text(
              "effortless interactions ",
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
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Page3()));
                },
                child: Text(
                  "Next",
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
                onPressed: () {},
                child: Text(
                  "Skip",
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
