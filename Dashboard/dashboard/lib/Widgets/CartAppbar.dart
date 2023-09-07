import 'package:flutter/material.dart';

class CartAppbar extends StatefulWidget {
  const CartAppbar({super.key});

  @override
  State<CartAppbar> createState() => _CartAppbarState();
}

class _CartAppbarState extends State<CartAppbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
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
              "Cart",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                  color: const Color.fromARGB(255, 8, 58, 116)),
            ),
          ),
          Spacer(),
          Icon(
            Icons.more_vert,
            color: const Color.fromARGB(255, 8, 66, 114),
            size: 30,
          ),
        ],
      ),
    );
  }
}
