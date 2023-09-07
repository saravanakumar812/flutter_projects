import 'package:flutter/material.dart';

void main() {
  runApp(const myapp());
}

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  bool isImageVisible1 = true;
  bool isImageVisible2 = true;
  bool isImageVisible3 = true;
  bool isImageVisible4 = true;
  int tabCount = 1;

  var labelText = '';
  var labelText1 = 'Task1 is completed';
  var text1 = 'welcome';
  var labelText3 = '';
  var text2 = '';
  var controllerone = TextEditingController();
  var controllertwo = TextEditingController();
  var controller4 = TextEditingController();
  String _resultAdd = '';
  String _resultSub = '';
  String _resultMul = '';
  String _resultDiv = '';
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  @override
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.grey,
              flexibleSpace: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                colors: [Colors.purple, Colors.red],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ))),
              leading: IconButton(
                onPressed: () {
                  setState(() {
                    text1 = 'This is menu button';
                  });
                },
                icon: Icon(Icons.menu),
              ),
              title: Text('Task Practice'),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                ),
              ],
              bottom: TabBar(
                isScrollable: true,
                tabs: [
                  Tab(text: 'Task1'),
                  Tab(text: 'Task2'),
                  Tab(text: 'Task3'),
                  Tab(text: 'Task4'),
                  Tab(text: 'Task5')
                ],
              ),
            ),
            body: TabBarView(children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      labelText,
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          labelText = labelText1;
                        });
                      },
                      child: Text(
                        'Click Me',
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      ),
                    )
                  ],
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      labelText3,
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    TextField(
                      controller: controllerone,
                      decoration: InputDecoration(
                        hintText: 'Your Text',
                        labelStyle: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                        ),
                        border: InputBorder.none,
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          labelText3 = controllerone.text;
                        });
                      },
                      child: Text(
                        'Click Me',
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      ),
                    )
                  ],
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: TextField(
                        onChanged: (val) {
                          setState(() {
                            text2 = controller4.text;
                          });
                        },
                        controller: controller4,
                        decoration: InputDecoration(
                          hintText: 'Your Text',
                          labelStyle: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                          ),
                          border: InputBorder.none,
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                    Text(
                      '$text2',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        controller: controller1,
                        decoration: InputDecoration(
                          hintText: 'Your Text',
                          labelStyle: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                          ),
                          border: InputBorder.none,
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: controller2,
                        decoration: InputDecoration(
                          hintText: 'Your Text',
                          labelStyle: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                          ),
                          border: InputBorder.none,
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                      Text(
                        'Addtion $_resultAdd',
                        style: TextStyle(fontSize: 24),
                      ),
                      Text(
                        ' Substraction $_resultSub',
                        style: TextStyle(fontSize: 24),
                      ),
                      Text(
                        ' Multiplication $_resultMul',
                        style: TextStyle(fontSize: 24),
                      ),
                      Text(
                        ' Division $_resultDiv',
                        style: TextStyle(fontSize: 24),
                      ),
                      TextButton(
                        onPressed: _add,
                        child: Text(
                          'ADD',
                          style: TextStyle(fontSize: 24, color: Colors.black),
                        ),
                      ),
                      TextButton(
                        onPressed: _sub,
                        child: Text(
                          'SUB',
                          style: TextStyle(fontSize: 24, color: Colors.black),
                        ),
                      ),
                      TextButton(
                        onPressed: _mul,
                        child: Text(
                          'MUL',
                          style: TextStyle(fontSize: 24, color: Colors.black),
                        ),
                      ),
                      TextButton(
                        onPressed: _div,
                        child: Text(
                          'DIV',
                          style: TextStyle(fontSize: 24, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                  child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Visibility(
                              maintainSize: true,
                              visible: !isImageVisible1,
                              maintainAnimation: true,
                              maintainState: true,
                              child: Image.asset('pictures/IMG-MSD1.jpg')),
                          height: 100,
                          width: 100,
                          margin: EdgeInsets.only(top: 60, left: 60),
                          color: Colors.black,
                        ),
                        Container(
                          child: Visibility(
                              maintainSize: true,
                              visible: !isImageVisible2,
                              maintainAnimation: true,
                              maintainState: true,
                              child: Image.asset('pictures/IMG-MSD1.jpg')),
                          height: 100,
                          width: 100,
                          margin: EdgeInsets.only(top: 60, left: 60),
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                    Row(children: [
                      Container(
                        child: Visibility(
                            maintainSize: true,
                            visible: !isImageVisible3,
                            maintainAnimation: true,
                            maintainState: true,
                            child: Image.asset('pictures/IMG-MSD1.jpg')),
                        height: 100,
                        width: 100,
                        margin: EdgeInsets.only(top: 60, left: 60),
                        color: Colors.black,
                      ),
                      Container(
                        child: Visibility(
                            maintainSize: true,
                            visible: !isImageVisible4,
                            maintainAnimation: true,
                            maintainState: true,
                            child: Image.asset('pictures/IMG-MSD1.jpg')),
                        height: 100,
                        width: 100,
                        margin: EdgeInsets.only(top: 60, left: 60),
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ]),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            if (tabCount == 1) {
                              tabCount = 2;
                              isImageVisible1 = !isImageVisible1;
                              isImageVisible2 = true;
                              isImageVisible3 = true;
                              isImageVisible4 = true;
                            } else if (tabCount == 2) {
                              tabCount = 3;
                              isImageVisible1 = true;
                              isImageVisible2 = !isImageVisible2;
                              isImageVisible3 = true;
                              isImageVisible4 = true;
                            } else if (tabCount == 3) {
                              tabCount = 4;
                              isImageVisible1 = true;
                              isImageVisible2 = true;
                              isImageVisible3 = !isImageVisible3;
                              isImageVisible4 = true;
                            } else {
                              tabCount = 1;
                              isImageVisible1 = true;
                              isImageVisible2 = true;
                              isImageVisible3 = true;
                              isImageVisible4 = !isImageVisible4;
                            }
                          });
                        },
                        child: Text('click me'))
                  ],
                ),
              ))
            ])));
  }

  void _add() {
    int a = int.tryParse(controller1.text) ?? 0;
    int b = int.tryParse(controller2.text) ?? 0;
    setState(() {
      _resultAdd = (a + b).toString();
    });
  }

  void _sub() {
    int a = int.tryParse(controller1.text) ?? 0;
    int b = int.tryParse(controller2.text) ?? 0;
    setState(() {
      _resultSub = (a - b).toString();
    });
  }

  void _mul() {
    int a = int.tryParse(controller1.text) ?? 0;
    int b = int.tryParse(controller2.text) ?? 0;
    setState(() {
      _resultMul = (a * b).toString();
    });
  }

  void _div() {
    double c = double.tryParse(controller1.text) ?? 0;
    double d = double.tryParse(controller2.text) ?? 0;
    setState(() {
      _resultDiv = (c / d).toString();
    });
  }
}
