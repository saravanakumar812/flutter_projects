import 'package:flutter/material.dart';

class page6 extends StatefulWidget {
  const page6({super.key});

  @override
  State<page6> createState() => _page6State();
}

class _page6State extends State<page6> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 75,
                    height: 120,
                    color: Color.fromARGB(65, 158, 158, 158),
                    child: Container(
                        child: Column(
                      children: [
                        Container(
                            child: Center(
                          child: Text(
                            'Masala & Dry fruits',
                            style:
                                TextStyle(fontSize: 16, color: Colors.purple),
                          ),
                        )),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            child: Image.asset(
                          'images/pepsi.jpg',
                          height: 50,
                        ))
                      ],
                    )),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 75,
                    height: 120,
                    color: Color.fromARGB(65, 158, 158, 158),
                    child: Container(
                        child: Column(
                      children: [
                        Container(
                            child: Center(
                          child: Text(
                            'Sweet & Cravings',
                            style:
                                TextStyle(fontSize: 16, color: Colors.purple),
                          ),
                        )),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Image.asset('images/sweets.jpg'),
                        )
                      ],
                    )),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 75,
                    height: 120,
                    color: Color.fromARGB(65, 158, 158, 158),
                    child: Container(
                        child: Column(
                      children: [
                        Container(
                            child: Center(
                          child: Text(
                            'Froze Food',
                            style:
                                TextStyle(fontSize: 16, color: Colors.purple),
                          ),
                        )),
                        Container(
                          child: Image.asset('images/6403.jpg'),
                        )
                      ],
                    )),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 75,
                    height: 120,
                    color: Color.fromARGB(65, 158, 158, 158),
                    child: Container(
                        child: Column(
                      children: [
                        Container(
                            child: Center(
                          child: Text(
                            'Pakged Food',
                            style:
                                TextStyle(fontSize: 16, color: Colors.purple),
                          ),
                        )),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Image.asset('images/pakaged-food.jpg'),
                        )
                      ],
                    )),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 75,
                    height: 120,
                    color: Color.fromARGB(65, 158, 158, 158),
                    child: Container(
                        child: Column(
                      children: [
                        Container(
                            child: Center(
                          child: Text(
                            'Diary Breas Eggs',
                            style:
                                TextStyle(fontSize: 14, color: Colors.purple),
                          ),
                        )),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Image.asset('images/eggs.jpg'),
                        )
                      ],
                    )),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 75,
                    height: 120,
                    color: Color.fromARGB(65, 158, 158, 158),
                    child: Container(
                        child: Column(
                      children: [
                        Container(
                            child: Center(
                          child: Text(
                            'Cold Drings',
                            style:
                                TextStyle(fontSize: 16, color: Colors.purple),
                          ),
                        )),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Image.asset('images/2327205.jpg', height: 60),
                        )
                      ],
                    )),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 75,
                    height: 120,
                    color: Color.fromARGB(65, 158, 158, 158),
                    child: Container(
                        child: Column(
                      children: [
                        Container(
                            child: Center(
                          child: Text(
                            'Meat,Egg,Fish',
                            style:
                                TextStyle(fontSize: 16, color: Colors.purple),
                          ),
                        )),
                        Container(
                          child: Image.asset('images/90585.jpg'),
                        )
                      ],
                    )),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 75,
                    height: 120,
                    color: Color.fromARGB(65, 158, 158, 158),
                    child: Container(
                        child: Column(
                      children: [
                        Container(
                            child: Center(
                          child: Text(
                            'Munchies',
                            style:
                                TextStyle(fontSize: 16, color: Colors.purple),
                          ),
                        )),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Image.asset('images/munchies.jpg'),
                        )
                      ],
                    )),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 75,
                    height: 120,
                    color: Color.fromARGB(65, 158, 158, 158),
                    child: Container(
                        child: Column(
                      children: [
                        Container(
                            child: Center(
                          child: Text(
                            'Breakfast Sauces',
                            style:
                                TextStyle(fontSize: 16, color: Colors.purple),
                          ),
                        )),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Image.asset('images/sandvich.jpg'),
                        )
                      ],
                    )),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 75,
                    height: 120,
                    color: Color.fromARGB(65, 158, 158, 158),
                    child: Container(
                        child: Column(
                      children: [
                        Container(
                            child: Center(
                          child: Text(
                            'Jucies',
                            style:
                                TextStyle(fontSize: 16, color: Colors.purple),
                          ),
                        )),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Image.asset(
                            'images/cococola.jpg',
                            height: 60,
                          ),
                        )
                      ],
                    )),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 75,
                    height: 120,
                    color: Color.fromARGB(65, 158, 158, 158),
                    child: Container(
                        child: Column(
                      children: [
                        Container(
                            child: Center(
                          child: Text(
                            'Biscuits',
                            style:
                                TextStyle(fontSize: 16, color: Colors.purple),
                          ),
                        )),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Image.asset('images/biscuits.jpg'),
                        )
                      ],
                    )),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 75,
                    height: 120,
                    color: Color.fromARGB(65, 158, 158, 158),
                    child: Container(
                        child: Column(
                      children: [
                        Container(
                            child: Center(
                          child: Text(
                            'Gourmet Selection',
                            style:
                                TextStyle(fontSize: 16, color: Colors.purple),
                          ),
                        )),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Image.asset('images/meat.jpg'),
                        )
                      ],
                    )),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 75,
                    height: 120,
                    color: Color.fromARGB(65, 158, 158, 158),
                    child: Container(
                        child: Column(
                      children: [
                        Container(
                            child: Center(
                          child: Text(
                            'Noodles',
                            style:
                                TextStyle(fontSize: 16, color: Colors.purple),
                          ),
                        )),
                        SizedBox(height: 10),
                        Container(
                          child: Image.asset('images/noodles.jpg'),
                        )
                      ],
                    )),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 75,
                    height: 120,
                    color: Color.fromARGB(65, 158, 158, 158),
                    child: Container(
                        child: Column(
                      children: [
                        Container(
                            child: Center(
                          child: Text(
                            'Rise',
                            style:
                                TextStyle(fontSize: 16, color: Colors.purple),
                          ),
                        )),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Image.asset('images/rise.jpg'),
                        )
                      ],
                    )),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 75,
                    height: 120,
                    color: Color.fromARGB(65, 158, 158, 158),
                    child: Container(
                        child: Column(
                      children: [
                        Container(
                            child: Center(
                          child: Text(
                            'Eggs',
                            style:
                                TextStyle(fontSize: 16, color: Colors.purple),
                          ),
                        )),
                        Container(
                          child: Image.asset('images/eggs.jpg'),
                        )
                      ],
                    )),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 75,
                    height: 120,
                    color: Color.fromARGB(65, 158, 158, 158),
                    child: Container(
                        child: Column(
                      children: [
                        Container(
                            child: Center(
                          child: Text(
                            'MYonase',
                            style:
                                TextStyle(fontSize: 16, color: Colors.purple),
                          ),
                        )),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Image.asset('images/mayonnaise.jpg'),
                        )
                      ],
                    )),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
