import 'package:flutter/material.dart';

class ItemSelling extends StatefulWidget {
  const ItemSelling({super.key});

  @override
  State<ItemSelling> createState() => _ItemSellingState();
}

class _ItemSellingState extends State<ItemSelling> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.60,
      crossAxisCount: 2,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 8; i++)
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 7, 79, 138)),
                      child: Text(
                        "-50%",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Icon(
                      Icons.favorite_outline,
                      color: Colors.red,
                    )
                  ],
                ),
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "ItemName");
                    },
                    child: Container(
                      margin: EdgeInsets.all(5),
                      child: Image.asset(
                        "images/$i.png",
                        width: 120,
                        height: 120,
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Product Title",
                      style: TextStyle(
                          fontSize: 18,
                          color: const Color.fromARGB(255, 8, 39, 75),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Write Description of product",
                    style: TextStyle(
                        fontSize: 15,
                        color: const Color.fromARGB(255, 8, 39, 75),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$55",
                        style: TextStyle(
                            fontSize: 12,
                            color: const Color.fromARGB(255, 8, 39, 75),
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.shopping_cart_checkout,
                        color: const Color.fromARGB(255, 9, 65, 111),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
      ],
    );
  }
}
