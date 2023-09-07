import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartSamples extends StatefulWidget {
  const CartSamples({super.key});

  @override
  State<CartSamples> createState() => _CartSamplesState();
}

class _CartSamplesState extends State<CartSamples> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 1; i < 4; i++)
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            height: 110,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Row(
              children: [
                Radio(
                  value: "",
                  groupValue: "",
                  onChanged: (index) {},
                  activeColor: const Color.fromARGB(255, 9, 70, 119),
                ),
                Container(
                  height: 70,
                  width: 70,
                  margin: EdgeInsets.only(right: 20),
                  child: Image.asset("images/$i.png"),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Product title",
                        style: TextStyle(
                            fontSize: 20,
                            color: const Color.fromARGB(255, 9, 71, 121),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "\$55",
                        style: TextStyle(
                            fontSize: 18,
                            color: const Color.fromARGB(255, 9, 71, 121),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 10,
                                    spreadRadius: 1,
                                    color: Colors.grey.withOpacity(0.5),
                                  )
                                ]),
                            child: Icon(
                              CupertinoIcons.plus,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            child: Text(
                              "01",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 6, 67, 151)),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 10,
                                    spreadRadius: 1,
                                    color: Colors.grey.withOpacity(0.5),
                                  )
                                ]),
                            child: Icon(
                              CupertinoIcons.minus,
                              size: 15,
                            ),
                          )
                        ],
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
