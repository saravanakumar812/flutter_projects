import 'package:flutter/material.dart';

class Task5 extends StatefulWidget {
  const Task5({super.key});

  @override
  State<Task5> createState() => _Task5State();
}

class _Task5State extends State<Task5> {
  bool isImageVisible1 = true;
  bool isImageVisible2 = true;
  bool isImageVisible3 = true;
  bool isImageVisible4 = true;
  int tabCount = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Task5')),
      body: Center(
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
                      child: Image.asset('images/IMG_1.jpg')),
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
                      child: Image.asset('images/IMG_1.jpg')),
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
                    child: Image.asset('images/IMG_1.jpg')),
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
                    child: Image.asset('images/IMG_1.jpg')),
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
      )),
    );
  }
}
