import 'package:flutter/material.dart';

class Page5 extends StatefulWidget {
  const Page5({super.key});

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                child: Text(
                  'Explore by Catogories',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                width: 60,
              ),
              Container(
                child: Text(
                  'See all>',
                  style: TextStyle(fontSize: 20, color: Colors.purple),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          child: Center(
                            child: Text(
                              'Friuts',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          width: 160,
                          height: 35,
                          color: Color.fromARGB(65, 158, 158, 158),
                        ),
                        Container(
                          width: 160,
                          height: 125,
                          child: Image.asset(
                            'images/fruits-vegetables.jpg',
                          ),
                          color: Color.fromARGB(65, 158, 158, 158),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          child: Center(
                            child: Text(
                              'Eddble Oils',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          width: 160,
                          height: 35,
                          color: Color.fromARGB(65, 158, 158, 158),
                        ),
                        Container(
                          width: 160,
                          height: 125,
                          child: Image.asset('images/oils1.jpg'),
                          color: Color.fromARGB(65, 158, 158, 158),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
