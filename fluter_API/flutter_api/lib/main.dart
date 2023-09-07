import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      debugShowCheckedModeBanner: false,
      home: const FetchData(),
    );
  }
}

class FetchData extends StatefulWidget {
  const FetchData({Key? key}) : super(key: key);

  @override
  State<FetchData> createState() => _FetchDataState();
}

class _FetchDataState extends State<FetchData> {
  List? makeList;

  @override
  void initState() {
    super.initState();
    fetch();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show Data'),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: FutureBuilder(
            future: fetch(),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              if (snapshot.data != null) {
                return ListView.builder(
                  itemCount: makeList!.length,
                  itemBuilder: (BuildContext context, int i) {
                    return ListTile(
                      title: Text(makeList![i].toString()),
                    );
                  },
                );
              } else {
                return Container(
                    child: Center(
                  child: Text('Failed'),
                ));
              }
            }),
      ),
    );
  }
}
