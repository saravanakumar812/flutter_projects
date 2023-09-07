import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemNavBar extends StatefulWidget {
  const ItemNavBar({super.key});

  @override
  State<ItemNavBar> createState() => _ItemNavBarState();
}

class _ItemNavBarState extends State<ItemNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 70,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 10,
                  offset: Offset(0, 3),
                  spreadRadius: 3)
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$120",
              style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 6, 67, 151),
                  fontWeight: FontWeight.bold),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.cart_badge_plus,
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 109, 18, 194)),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 13, horizontal: 15),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
              label: Text(
                "Add to cart",
                style: TextStyle(
                    fontSize: 18,
                    //color: Color.fromARGB(255, 6, 67, 151),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
