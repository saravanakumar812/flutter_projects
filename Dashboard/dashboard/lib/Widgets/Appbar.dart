import 'package:flutter/material.dart';

class Appbar extends StatefulWidget {
  const Appbar({super.key});

  @override
  State<Appbar> createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      color: Colors.white,
      child: Row(
        children: [
          Icon(
            Icons.sort,
            color: const Color.fromARGB(255, 4, 69, 122),
            size: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "DP Shop",
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 4, 69, 122)),
            ),
          ),
          Spacer(),
          Badge(
            backgroundColor: Colors.red,
            smallSize: 50,
            label: Text("3"),
            largeSize: 16,
            child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "CartName");
                },
                child: Icon(
                  Icons.shopping_bag_outlined,
                  size: 30,
                  color: const Color.fromARGB(255, 4, 69, 122),
                )),
          ),
        ],
      ),
    );
  }
}
