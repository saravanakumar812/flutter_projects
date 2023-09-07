import 'package:flutter/material.dart';
//import 'package:list_view/main.dart';

void main() {
  runApp(myapp());
}

class Contact {
  final String name;
  final String phoneNumber;
  final String email;

  Contact({required this.name, required this.phoneNumber, required this.email});
}

class myapp extends StatelessWidget {
  final List<Contact> contacts = [
    Contact(
        name: 'John Doe', phoneNumber: '1234567890', email: 'john@example.com'),
    Contact(
        name: 'Jane Smith',
        phoneNumber: '9876543210',
        email: 'jane@example.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<Contact> contacts = [
    Contact(
        name: 'John Doe', phoneNumber: '1234567890', email: 'john@example.com'),
    Contact(
        name: 'Jane Smith',
        phoneNumber: '9876543210',
        email: 'jane@example.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            // setState(() {});
          },
          icon: Icon(Icons.menu),
        ),
        title: Text('CONTACTS'),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {});
            },
            icon: Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(contacts[index].name),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Phone Number: ${contacts[index].phoneNumber}'),
                  Text('Email: ${contacts[index].email}'),
                ],
              ),
            );
          }),
    );
  }
}
