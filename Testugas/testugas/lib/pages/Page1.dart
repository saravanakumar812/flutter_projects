import 'package:flutter/material.dart';
import 'package:testugas/pages/Page2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
              "Team Up For Success",
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
            "Get Ready unleash your potential and withness the",
            style: TextStyle(fontSize: 15),
          ),
        ),
        Container(
          child: Text(
            "power teamwork as we embark on this ",
            style: TextStyle(fontSize: 15),
          ),
        ),
        Container(
          child: Text(
            "extraordinary project ",
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
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page2()));
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
                  side: BorderSide(color: const Color.fromARGB(65, 97, 93, 93)),
                  primary: Colors.black,
                  backgroundColor: Colors.white),
            ))
      ],
    );
  }
}
