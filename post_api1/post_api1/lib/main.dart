//import 'dart:math';

import 'dart:convert';
//import 'dart:io';
//import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class Detail {
  final int id;
  final String login;

  Detail({required this.id, required this.login});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PostPage(),
    );
  }
}

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  Future<Map> getData() async {
    print("function Started");
    var urlString = "https://kuwycredit.in/servlet/rest/ltv/forecast/ltvMakes";

    var url = Uri.parse(urlString);

    var param = {"year": "2018"};

    var response = await http.post(url,
        body: jsonEncode(param),
        headers: {"Content-Type": " application/json"});

    print(response.statusCode);
    print(response.body);
    print("api Completed");

    Map resp = jsonDecode(response.body);

    return resp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter API'),
      ),
      body: FutureBuilder(
          future: getData(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.hasData) {
              Map totalData = snapshot.data;
              List makeList = totalData["makeList"];

              return ListView.builder(
                  itemCount: makeList.length,
                  itemBuilder: (BuildContext context, Index) {
                    return ListTile(
                      title: Text(makeList[Index]),
                      subtitle: Text(makeList[Index]),
                    );
                  });
            } else {
              return Center(
                child: Text('failed'),
              );
            }
          }),
    );
  }
}
