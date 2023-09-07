import 'package:flutter/material.dart';
import 'package:youtube/pages/homepage.dart';

void main() {
  runApp(youtube());
}

class youtube extends StatelessWidget {
  const youtube({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.yellow),
      debugShowCheckedModeBanner: true,
      home: youtubePage(),
    );
  }
}

class youtubePage extends StatefulWidget {
  const youtubePage({super.key});

  @override
  State<youtubePage> createState() => _youtubePageState();
}

var selectedIndex = 0;
var pageList = [
  HomePage(),
  Center(
    child: Text('subscribtions'),
  ),
  Center(
    child: Text('live Video'),
  ),
  Center(
    child: Text('shorts'),
  ),
  Center(
    child: Text('library'),
  ),
];

class _youtubePageState extends State<youtubePage> {
  ontap(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
              leading: Image(
                image: AssetImage('images/youtube-logo-png-2069.png'),
              ),
              title: Text('YOUTUBE'),
              backgroundColor: Colors.white,
              actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.cast)),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.notification_add)),
                IconButton(onPressed: () {}, icon: Icon(Icons.create)),
                CircleAvatar(
                  backgroundImage: AssetImage('images/pp4.jpg'),
                  radius: 20,
                )
              ],
              bottom: PreferredSize(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20, left: 20),
                      child: Row(
                        children: [
                          SizedBox(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20) //
                                        ),
                              ),
                              child: Text('Exploror'),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10) //
                                        ),
                              ),
                              child: Text('All'),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20) //
                                        ),
                              ),
                              child: Text('Music'),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20) //
                                        ),
                              ),
                              child: Text('Sports'),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20) //
                                        ),
                              ),
                              child: Text('Devotional'),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20) //
                                        ),
                              ),
                              child: Text('Recent'),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20) //
                                        ),
                              ),
                              child: Text('Live'),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  preferredSize: Size(60, 60))),
          body: pageList[selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
              onTap: ontap,
              currentIndex: selectedIndex,
              fixedColor: Color.fromARGB(255, 119, 10, 203),
              useLegacyColorScheme: true,
              unselectedItemColor: Colors.green,
              selectedIconTheme: IconThemeData(size: 25),
              unselectedIconTheme: IconThemeData(size: 25),
              selectedFontSize: 20,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              unselectedLabelStyle: TextStyle(fontSize: 15),
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
                BottomNavigationBarItem(
                    //backgroundColor: Colors.amber,
                    icon: Icon(Icons.subscriptions),
                    label: 'subscriptions'),
                BottomNavigationBarItem(
                    // backgroundColor: Colors.blue,
                    icon: Icon(Icons.live_tv_outlined),
                    label: 'live'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.cabin), label: 'shorts'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.library_books), label: 'library'),
              ]),
        ));
  }
}
