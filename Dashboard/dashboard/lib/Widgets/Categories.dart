import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        for (int i = 1; i < 8; i++)
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  30,
                ),
                color: Colors.white),
            child: Row(
              children: [
                Container(
                  child: Image.asset(
                    "images/${i}.png",
                    width: 40,
                    height: 40,
                  ),
                ),
                Text(
                  "Sandal",
                  style: TextStyle(fontSize: 20, color: Colors.blue[800]),
                )
              ],
            ),
          ),
      ]),
    );
  }
}
