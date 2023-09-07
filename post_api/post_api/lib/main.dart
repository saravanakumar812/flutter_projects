import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart ' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: firstpage(),
    );
  }
}

class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  Future<List> getData() async {
    print("function Started");
    var urlString = "https://kuwycredit.in/servlet/rest/ltv/forecast/ltvMakes";

    var url = Uri.parse(urlString);

    var param = {"year": "2018"};

    var response = await http.post(url,
        body: jsonEncode(param),
        headers: {"Content-Type": " application/json"});

    if (response.statusCode == 200) {
      List resp = jsonDecode(response.body);
      print(response.body);

      return resp;
    } else {
      throw Exception("failed to success");
    }
  }

  @override
  Widget build(BuildContext context) {TUJK
    return Scaffold(
      appBar: AppBar(
        title: Text("Api integration"),
      ),
      body: Center(
          child: FutureBuilder(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            List totalData = snapshot.data;

            return ListView.builder(
                itemCount: totalData.length,
                itemBuilder: (BuildContext context, Index) {
                  Map singleData = totalData[Index];
                  return ListTile(
                    title: Text(singleData["id"].toString()),
                    subtitle: Text(singleData["node_id"].toString()),
                  );
                });
          } else {
            return Text("Failure");
          }
        },
      )),
    );
  }
}
