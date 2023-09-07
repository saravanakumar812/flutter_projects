import 'package:facebook/pages/contacts.dart';
import 'package:facebook/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(Facebook());
}

class Facebook extends StatelessWidget {
  const Facebook({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FacebookPage(),
    );
  }
}

class FacebookPage extends StatefulWidget {
  const FacebookPage({super.key});

  @override
  State<FacebookPage> createState() => _FacebookPageState();
}

class _FacebookPageState extends State<FacebookPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              'facebook',
              style: TextStyle(
                  color: Color.fromARGB(255, 15, 109, 222),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            actions: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Color.fromARGB(70, 149, 146, 148),
                child: IconButton(
                  splashRadius: 20,
                  icon: Icon(
                    Icons.add_rounded,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: Color.fromARGB(70, 149, 146, 148),
                child: IconButton(
                  splashRadius: 20,
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: Color.fromARGB(70, 149, 146, 148),
                child: IconButton(
                  splashRadius: 20,
                  icon: Icon(
                    Icons.message_rounded,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
            bottom: TabBar(tabs: [
              Tab(
                  icon: Icon(
                Icons.home,
                color: Color.fromARGB(255, 150, 150, 150),
              )),
              Tab(
                  icon: Icon(
                Icons.contacts,
                color: Color.fromARGB(255, 150, 150, 150),
              )),
              Tab(
                  icon: Icon(
                Icons.live_tv,
                color: Color.fromARGB(255, 150, 150, 150),
              )),
              Tab(
                  icon: Icon(
                Icons.person_rounded,
                color: Color.fromARGB(255, 150, 150, 150),
              )),
              Tab(
                  icon: Icon(
                Icons.notifications,
                color: Color.fromARGB(255, 150, 150, 150),
              )),
              Tab(
                  icon: Icon(
                Icons.menu,
                color: Color.fromARGB(255, 150, 150, 150),
              )),
            ]),
          ),
          body: TabBarView(children: [
            Home(),
            Contacts(),
            Text('live'),
            Text('friends'),
            Text('notifications'),
            Text('menu'),
          ]),
        ));
  }
}
