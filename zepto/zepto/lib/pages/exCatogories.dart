import 'package:flutter/material.dart';

class Catogories extends StatefulWidget {
  const Catogories({super.key});

  @override
  State<Catogories> createState() => _CatogoriesState();
}

class _CatogoriesState extends State<Catogories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          child: Center(
                              child: Column(
                            children: [
                              Container(
                                child: Text('Fruits'),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                child: Image.asset(
                                  'images/fruits-vegetables.jpg',
                                ),
                              )
                            ],
                          )),
                          width: 160,
                          height: 160,
                          color: Color.fromARGB(65, 158, 158, 158),
                        ),
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
          ),
        ],
      ),
    );
  }
}
