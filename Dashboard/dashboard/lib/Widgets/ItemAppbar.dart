import 'package:flutter/material.dart';

class ItemAppbar extends StatefulWidget {
  const ItemAppbar({super.key});

  @override
  State<ItemAppbar> createState() => _ItemAppbarState();
}

class _ItemAppbarState extends State<ItemAppbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.all(25),
        child: Row(children: [
          InkWell(
            onTap: () {
              // return to previous page
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: const Color.fromARGB(255, 8, 66, 114),
              size: 30,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Product",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                  color: const Color.fromARGB(255, 8, 58, 116)),
            ),
          ),
          Spacer(),
          Icon(
            Icons.favorite,
            color: Colors.red,
            size: 30,
          ),
        ]));
  }
}
