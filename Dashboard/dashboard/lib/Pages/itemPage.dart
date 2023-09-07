import 'package:dashboard/Widgets/ItemAppbar.dart';
import 'package:dashboard/Widgets/ItemNavBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    List<Color> Clrs = [
      Colors.red,
      Colors.yellow,
      Colors.green,
      Colors.blue,
      Colors.orange,
    ];
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 239, 239),
      body: ListView(children: [
        ItemAppbar(),
        Padding(
          padding: EdgeInsets.all(16),
          child: Image.asset(
            "images/1.png",
            height: 300,
          ),
        ),
        Arc(
          edge: Edge.TOP,
          arcType: ArcType.CONVEY,
          height: 30,
          child: Container(
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40, bottom: 15),
                    child: Row(
                      children: [
                        Text(
                          "Product Title",
                          style: TextStyle(
                              fontSize: 25,
                              color: const Color.fromARGB(255, 13, 81, 137)),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RatingBar.builder(
                            itemBuilder: (context, index) => Icon(
                                Icons.favorite,
                                color: const Color.fromARGB(255, 13, 81, 137)),
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 20,
                            itemPadding: EdgeInsets.symmetric(horizontal: 5),
                            onRatingUpdate: (index) {}),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.65),
                                        offset: Offset(0, 3),
                                        blurRadius: 10,
                                        spreadRadius: 3)
                                  ]),
                              child: Icon(
                                CupertinoIcons.minus,
                                size: 18,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "01",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 6, 67, 151)),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.65),
                                        offset: Offset(0, 3),
                                        blurRadius: 10,
                                        spreadRadius: 3)
                                  ]),
                              child: Icon(
                                CupertinoIcons.plus,
                                size: 18,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "This is more detailed description of the product you can write here more about the product.This is lengthy description. ",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 6, 67, 151),
                        ),
                      )),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Row(children: [
                        Text(
                          "Size: ",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 6, 67, 151),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            for (int i = 5; i < 10; i++)
                              Container(
                                width: 30,
                                height: 30,
                                alignment: Alignment.center,
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.65),
                                          blurRadius: 8,
                                          spreadRadius: 2)
                                    ]),
                                child: Text(
                                  i.toString(),
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 6, 67, 151),
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                          ],
                        )
                      ])),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Row(children: [
                        Text(
                          "Color: ",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 6, 67, 151),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            for (int i = 0; i < 5; i++)
                              Container(
                                width: 30,
                                height: 30,
                                alignment: Alignment.center,
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                    color: Clrs[i],
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.65),
                                          blurRadius: 8,
                                          spreadRadius: 2)
                                    ]),
                              )
                          ],
                        )
                      ])),
                ],
              ),
            ),
          ),
        )
      ]),
      bottomNavigationBar: ItemNavBar(),
    );
  }
}
