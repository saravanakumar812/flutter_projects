import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:meta/meta.dart';
import 'dart:convert';

void main() {
  runApp(const myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: ContactPage(),
    );
  }
}

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

TextEditingController controllerName = TextEditingController();
TextEditingController controllerContact = TextEditingController();

ContactList contactListFromJson(String str) =>
    ContactList.fromJson(json.decode(str));

String contactListToJson(ContactList data) => json.encode(data.toJson());

class ContactList {
  ContactList({required this.data});

  final List<Datum> data;

  factory ContactList.fromJson(Map<String, dynamic> json) => ContactList(
        data: List<Datum>.from(json["data"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x)),
      };
}

class Datum {
  final String name;
  final List<String> contact;
  Datum({required this.name, required this.contact});

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        name: json["name"],
        contact: List<String>.from(json["contact"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "greeting": name,
        "instructions": List<dynamic>.from(contact.map((x) => x)),
      };
}

class _ContactPageState extends State<ContactPage> {
  //List<ContactList> contacts = List.empty(growable: true);
  late ContactList contactList;
  bool isDataLoaded = false;
  String errorMsg = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          title: Text('CONTACTS'),
          actions: [
            IconButton(
              onPressed: () {
                //var contact1 = controllerContact.text.trim();
                String name = controllerName.text.trim();
                List<String> contact =
                    controllerContact.text.trim() as List<String>;
                if (name.isNotEmpty && contact.isNotEmpty) {
                  setState(() {
                    controllerName.text = '';
                    controllerContact.text = '';
                    contactList.data.add(Datum(name: name, contact: contact));
                  });
                }
              },
              icon: Icon(Icons.add),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(children: [
            TextField(
              controller: controllerName,
              decoration: const InputDecoration(
                hintText: 'Contact name',
                labelStyle: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
                border: InputBorder.none,
                fillColor: Colors.grey,
                filled: true,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: controllerContact,
              maxLength: 10,
              decoration: const InputDecoration(
                hintText: 'Contact number',
                labelStyle: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
                border: InputBorder.none,
                fillColor: Colors.grey,
                filled: true,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            /*!isDataLoaded
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : errorMsg.isNotEmpty
                    ? Center(
                        child: Text(errorMsg),
                      )
                    : contactList.data.isEmpty
                        ? Center(
                            child: Text("data"),
                          )*/
            ListView.builder(
              itemCount: contactList.data.length,
              itemBuilder: (context, index) => getRow(index),
            )
          ]),
        ));
  }

  Widget getRow(int index) {
    //final Contact contacts;
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsPage(
                  contactList: contactList.data[index],
                ),
              ));
        },
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.contact_page),
        ),
        title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(contactList.data[index].name),
          //Text(contactList.data[index].contact),
        ]),
      ),
    );
  }
}

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.contactList});
  final Datum contactList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${contactList.name}'),
      ),
      body: Column(children: [
        Text('${contactList.name}'),
        Text('${contactList.contact}'),
      ]),
    );
  }
}
