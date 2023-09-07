import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

TextEditingController model = TextEditingController();

class _MyHomePageState extends State<MyHomePage> {
  List years = [
    "2013",
    "2014",
    "2015",
    "2016",
    "2017",
    "2018",
    "2019",
    "2020",
    "2021",
    "2022",
  ];
  TextEditingController yearController = TextEditingController();
  TextEditingController makeController = TextEditingController();
  TextEditingController modelController = TextEditingController();
  TextEditingController varantController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  List? makeList;
  List? modelList;
  List? variantList;
  List? locationList;

  @override
  void initState() {
    super.initState();
    fetch();
    modelFetch();
    variantFetch();
    locationFetch();
  }

  Future<String> fetch() async {
    final data = {'year': '2019'};
    var headers = {
      'Content-Type': 'application/json',
    };
    final response = await http.post(
        Uri.parse('https://kuwycredit.in/servlet/rest/ltv/forecast/ltvMakes'),
        headers: headers,
        body: jsonEncode(data));
    var responseData = json.decode(response.body);
    if (response.statusCode == 200) {
      makeList = responseData["makeList"];
      print("Data : " + makeList.toString());
    } else {
      throw Exception('Failed.');
    }
    return "";
  }

  Future<String> modelFetch() async {
    final data = {'year': '2019', "make": "RENAULT"};
    var headers = {
      'Content-Type': 'application/json',
    };
    final response = await http.post(
        Uri.parse('https://kuwycredit.in/servlet/rest/ltv/forecast/ltvModels'),
        headers: headers,
        body: jsonEncode(data));
    var responseData = json.decode(response.body);
    if (response.statusCode == 200) {
      modelList = responseData["modelList"];
      print("Data : " + modelList.toString());
    } else {
      throw Exception('Failed.');
    }
    return "";
  }

  Future<String> variantFetch() async {
    final data = {'year': '2019', "make": "RENAULT", "model": "KWID"};
    var headers = {
      'Content-Type': 'application/json',
    };
    final response = await http.post(
        Uri.parse(
            'https://kuwycredit.in/servlet/rest/ltv/forecast/ltvVariants'),
        headers: headers,
        body: jsonEncode(data));
    var responseData = json.decode(response.body);
    if (response.statusCode == 200) {
      variantList = responseData["variantList"];
      print("Data : " + variantList.toString());
    } else {
      throw Exception('Failed.');
    }
    return "";
  }

  Future<String> locationFetch() async {
    final data = {
      'year': '2019',
      "make": "RENAULT",
      "model": "KWID",
      "variant": "1.0 RXL"
    };
    var headers = {
      'Content-Type': 'application/json',
    };
    final response = await http.post(
        Uri.parse('https://kuwycredit.in/servlet/rest/ltv/forecast/ltvLoc'),
        headers: headers,
        body: jsonEncode(data));
    var responseData = json.decode(response.body);
    if (response.statusCode == 200) {
      locationList = responseData["locationList"];
      print("Data : " + locationList.toString());
    } else {
      throw Exception('Failed.');
    }
    return "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("profile"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                child: Icon(Icons.calendar_month),
              ),
              Container(
                width: 300,
                child: TextField(
                  controller: yearController,
                ),
              ),
              Container(
                child: IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return SizedBox(
                              height: 400,
                              child: ListView.builder(
                                itemCount: years.length,
                                itemBuilder: (BuildContext context, int i) {
                                  return Column(
                                    children: [
                                      ListTile(
                                        title: Text(years[i]),
                                        onTap: () {
                                          setState(() {
                                            print(years[i]);
                                            yearController.text =
                                                years[i].toString();
                                          });
                                        },
                                      )
                                    ],
                                  );
                                },
                              ),
                            );
                          });
                    },
                    icon: Icon(
                      Icons.arrow_drop_down,
                    )),
              )
            ],
          ),
          Row(
            children: [
              Container(
                child: Icon(Icons.car_rental),
              ),
              Container(
                width: 300,
                child: TextField(
                  controller: makeController,
                ),
              ),
              Container(
                child: IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return SizedBox(
                              height: 400,
                              child: ListView.builder(
                                itemCount: makeList!.length,
                                itemBuilder: (BuildContext context, int i) {
                                  return Column(
                                    children: [
                                      ListTile(
                                        title: Text(makeList![i]),
                                        onTap: () {
                                          setState(() {
                                            print(makeList![i]);
                                            makeController.text =
                                                makeList![i].toString();
                                          });
                                        },
                                      ),
                                    ],
                                  );
                                },
                              ),
                            );
                          });
                    },
                    icon: Icon(
                      Icons.arrow_drop_down,
                    )),
              )
            ],
          ),
          Row(
            children: [
              Container(
                child: Icon(Icons.car_repair),
              ),
              Container(
                width: 300,
                child: TextField(
                  controller: modelController,
                ),
              ),
              Container(
                child: IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return SizedBox(
                              height: 400,
                              child: ListView.builder(
                                itemCount: modelList!.length,
                                itemBuilder: (BuildContext context, int i) {
                                  return Column(
                                    children: [
                                      ListTile(
                                        title: Text(modelList![i]),
                                        onTap: () {
                                          setState(() {
                                            print(modelList![i]);
                                            modelController.text =
                                                modelList![i].toString();
                                          });
                                        },
                                      )
                                    ],
                                  );
                                },
                              ),
                            );
                          });
                    },
                    icon: Icon(
                      Icons.arrow_drop_down,
                    )),
              )
            ],
          ),
          Row(
            children: [
              Container(
                child: Icon(Icons.car_crash_sharp),
              ),
              Container(
                width: 300,
                child: TextField(
                  controller: varantController,
                ),
              ),
              Container(
                child: IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return SizedBox(
                              height: 400,
                              child: ListView.builder(
                                itemCount: variantList!.length,
                                itemBuilder: (BuildContext context, int i) {
                                  return Column(
                                    children: [
                                      ListTile(
                                        title: Text(variantList![i]),
                                        onTap: () {
                                          setState(() {
                                            print(variantList![i]);
                                            varantController.text =
                                                variantList![i].toString();
                                          });
                                        },
                                      )
                                    ],
                                  );
                                },
                              ),
                            );
                          });
                    },
                    icon: Icon(
                      Icons.arrow_drop_down,
                    )),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: Icon(Icons.location_on),
              ),
              Container(
                width: 300,
                child: TextField(
                  controller: locationController,
                ),
              ),
              Container(
                child: IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return SizedBox(
                              height: 400,
                              child: ListView.builder(
                                itemCount: locationList!.length,
                                itemBuilder: (BuildContext context, int i) {
                                  return Column(
                                    children: [
                                      ListTile(
                                        title: Text(locationList![i]),
                                        onTap: () {
                                          setState(() {
                                            print(locationList![i]);
                                            locationController.text =
                                                locationList![i].toString();
                                          });
                                        },
                                      )
                                    ],
                                  );
                                },
                              ),
                            );
                          });
                    },
                    icon: Icon(
                      Icons.arrow_drop_down,
                    )),
              )
            ],
          ),
          Container(
            child: Center(
              child: ElevatedButton(
                  onPressed: () {
                    yearController.clear();
                    makeController.clear();
                    modelController.clear();
                    varantController.clear();
                    locationController.clear();
                  },
                  child: Text("Clear")),
            ),
          )
        ],
      ),
    );
  }
}
