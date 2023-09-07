import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

void main() {
  runApp(const myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: ContactPage(),
      routes: {
        DetailsPage.routeName: (context) => const DetailsPage(),
      },
    );
  }
}

TextEditingController controllerName = TextEditingController();
TextEditingController controllerContact = TextEditingController();

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  List<Contact> contacts = List.empty(growable: true);

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
                String name = controllerName.text.trim();
                String contact = controllerContact.text.trim();
                if (name.isNotEmpty && contact.isNotEmpty) {
                  setState(() {
                    controllerName.text = '';
                    controllerContact.text = '';
                    contacts.add(Contact(name: name, contact: contact));
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
            Expanded(
                child: ListView.builder(
                    itemCount: contacts.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          leading: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.contact_page),
                          ),
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              DetailsPage.routeName,
                              arguments: contacts[index],
                            );
                          },
                          title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(contacts[index].name),
                                Text(contacts[index].contact)
                              ]),
                        ),
                      );
                    }))
          ]),
        ));
  }
}

class Contact {
  final String name;
  final String contact;

  Contact({required this.name, required this.contact});
}

class DetailsPage extends StatelessWidget {
  static const routeName = '/contact-details';
  const DetailsPage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final Contact contact =
        ModalRoute.of(context)!.settings.arguments as Contact;
    return Scaffold(
      appBar: AppBar(
        title: Text('${contact.name}'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.star)),
          IconButton(onPressed: () {}, icon: Icon(Icons.create))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          Container(
            child: Column(children: [
              CircleAvatar(
                radius: 75,
                backgroundColor: Colors.amber,
              ),
              Text(
                '${contact.name}',
                style: TextStyle(fontSize: 24),
              ),
              Text('${contact.contact}', style: TextStyle(fontSize: 18)),
            ]),
          ),
          SizedBox(
            height: 30,
          ),
          Divider(
            color: Colors.black,
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Center(
                child: Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                Icon(Icons.call),
                SizedBox(
                  width: 80,
                ),
                Icon(Icons.message),
                SizedBox(
                  width: 80,
                ),
                Icon(Icons.video_call)
              ],
            )),
          ),
          SizedBox(
            height: 30,
          ),
          Divider(
            color: Colors.black,
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            child: Text('Contact Info', style: TextStyle(fontSize: 30)),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              child: Row(
            children: [
              Text('WhatsApp : +91${contact.contact}',
                  style: TextStyle(fontSize: 20))
            ],
          )),
          SizedBox(
            height: 10,
          ),
          Container(
              child: Row(
            children: [
              Text('Telegram : +91${contact.contact}',
                  style: TextStyle(fontSize: 20))
            ],
          )),
          SizedBox(
            height: 10,
          ),
          Container(
              child: Row(
            children: [
              Text('Twitter: +91${contact.contact}',
                  style: TextStyle(fontSize: 20))
            ],
          )),
        ],
      ),
    );
  }
}
