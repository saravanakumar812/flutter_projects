import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/Screens/Attendence.dart';
import 'package:project1/Screens/Profile.dart';

class Project2 extends StatefulWidget {
  const Project2({super.key});

  @override
  State<Project2> createState() => _Project2State();
}

class _Project2State extends State<Project2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
              padding: const EdgeInsets.only(left: 10),
              onPressed: () {},
              icon: Image.asset(
                "images/access.png",
                color: Colors.white,
                height: 25,
                width: 25,
              )),
          Image.asset(
            "images/down-arrow.png",
            color: Colors.white,
            height: 15,
            width: 15,
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Stack(
              alignment: AlignmentDirectional.topStart,
              children: <Widget>[
                new Icon(Icons.notifications),
                new Positioned(
                  right: 0,
                  child: new Container(
                    padding: const EdgeInsets.all(1),
                    decoration: new BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 10,
                      minHeight: 10,
                    ),
                    child: new Text(
                      '',
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 40,
              ),
              width: 210,
              height: 200,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
                // boxShadow: [
                //   BoxShadow(
                //     color: Color.fromARGB(255, 239, 232, 232),
                //     blurRadius: 15.0,
                //     spreadRadius: 5.0,
                //     offset: Offset(
                //       5.0,
                //       5.0,
                //     ),
                //   )
                // ],
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  IconButton(
                    iconSize: 70,
                    icon: Image.asset(
                      "images/icon-person-4.jpg",
                      width: 70,
                      height: 150,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Profile()));
                    },
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Balaji Dayalan",
                        style: GoogleFonts.poppins(
                            // fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "000 007",
                        style: GoogleFonts.poppins(
                            // fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 239, 232, 232),
                          blurRadius: 15.0,
                          spreadRadius: 5.0,
                          offset: Offset(
                            5.0,
                            5.0,
                          ),
                        )
                      ],
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Image.asset(
                              "images/person icon.png",
                              width: 30,
                              color: Colors.blue,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Profile()));
                            },
                          ),
                          Text(
                            "Profile",
                            style: GoogleFonts.poppins(
                                // fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          )
                        ]),
                  ),
                  Container(
                    width: 90,
                    height: 90,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 239, 232, 232),
                          blurRadius: 15.0,
                          spreadRadius: 5.0,
                          offset: Offset(
                            5.0,
                            5.0,
                          ),
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Image.asset(
                            "images/checkcircle.png",
                            width: 30,
                            color: Colors.blue,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Attendance1()));
                          },
                        ),
                        Text("Attendance",
                            style: GoogleFonts.poppins(
                                // fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w500))
                      ],
                    ),
                  ),
                  Container(
                    width: 90,
                    height: 90,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 239, 232, 232),
                          blurRadius: 15.0,
                          spreadRadius: 5.0,
                          offset: Offset(
                            5.0,
                            5.0,
                          ),
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Image.asset(
                            "images/phone.png",
                            width: 30,
                            color: Colors.blue,
                          ),
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => Leave()));
                          },
                        ),
                        Text(
                          "Leave",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 239, 232, 232),
                          blurRadius: 15.0,
                          spreadRadius: 5.0,
                          offset: Offset(
                            5.0,
                            5.0,
                          ),
                        )
                      ],
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Image.asset(
                              "images/medical.png",
                              width: 30,
                              color: Colors.blue,
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => Medical()));
                            },
                          ),
                          Text(
                            "Medical",
                            style: GoogleFonts.poppins(
                                // fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          )
                        ]),
                  ),
                  Container(
                    width: 90,
                    height: 90,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 239, 232, 232),
                          blurRadius: 15.0,
                          spreadRadius: 5.0,
                          offset: Offset(
                            5.0,
                            5.0,
                          ),
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Image.asset(
                            "images/loan.png",
                            width: 30,
                            color: Colors.blue,
                          ),
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => Loan()));
                          },
                        ),
                        Text(
                          "Loan",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 90,
                    height: 90,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 239, 232, 232),
                          blurRadius: 15.0,
                          spreadRadius: 5.0,
                          offset: Offset(
                            5.0,
                            5.0,
                          ),
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Image.asset(
                            "images/rupee.png",
                            width: 30,
                            color: Colors.blue,
                          ),
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => PaySlip()));
                          },
                        ),
                        Text(
                          "PaySlip",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 239, 232, 232),
                          blurRadius: 15.0,
                          spreadRadius: 5.0,
                          offset: Offset(
                            5.0,
                            5.0,
                          ),
                        )
                      ],
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Image.asset(
                              "images/suggestion.png",
                              width: 30,
                              color: Colors.blue,
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => Suggestions()));
                            },
                          ),
                          Text(
                            "Suggestion",
                            style: GoogleFonts.poppins(
                                // fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          )
                        ]),
                  ),
                  Container(
                    width: 90,
                    height: 90,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 239, 232, 232),
                          blurRadius: 15.0,
                          spreadRadius: 5.0,
                          offset: Offset(
                            5.0,
                            5.0,
                          ),
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Image.asset(
                            "images/anonymous.png",
                            width: 30,
                            color: Colors.blue,
                          ),
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => Anonymous()));
                          },
                        ),
                        Text(
                          "Anonymous",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 90,
                    height: 90,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 239, 232, 232),
                          blurRadius: 15.0,
                          spreadRadius: 5.0,
                          offset: Offset(
                            5.0,
                            5.0,
                          ),
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Image.asset(
                            "images/gallery.png",
                            width: 30,
                            color: Colors.blue,
                          ),
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => Gallery()));
                          },
                        ),
                        Text(
                          "Gallery",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 90,
                    height: 90,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 239, 232, 232),
                          blurRadius: 15.0,
                          spreadRadius: 5.0,
                          offset: Offset(
                            5.0,
                            5.0,
                          ),
                        )
                      ],
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Image.asset(
                              "images/learning.png",
                              width: 30,
                              color: Colors.blue,
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => Learning()));
                            },
                          ),
                          Text(
                            "Learning",
                            style: GoogleFonts.poppins(
                                // fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          )
                        ]),
                  ),
                  SizedBox(
                    width: 37,
                  ),
                  Container(
                    width: 90,
                    height: 90,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 239, 232, 232),
                          blurRadius: 15.0,
                          spreadRadius: 5.0,
                          offset: Offset(
                            5.0,
                            5.0,
                          ),
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Image.asset(
                            "images/documents.png",
                            width: 30,
                            color: Colors.blue,
                          ),
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => Documents()));
                          },
                        ),
                        Text(
                          "Documents",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 30,
                        height: 30,
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Container(
                margin: EdgeInsets.only(right: 30),
                child: FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(Icons.question_mark),
                ),
              ),
            ]),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Column(children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: Colors.blue[50],
            ),
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 20, top: 20),
                  child: Image.asset(
                    "images/icon-person-4.jpg",
                    width: 50,
                    height: 100,
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Balaji Dayalan",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "000 007",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 75,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Image.asset(
                "images/home.png",
                width: 30,
                height: 30,
                color: Colors.black,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Home",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Image.asset(
                "images/company.png",
                width: 30,
                height: 30,
                color: Colors.black,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Company Profile",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Image.asset(
                "images/checkcircle.png",
                width: 30,
                height: 30,
                color: Colors.black,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Attendence",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Image.asset(
                "images/phone.png",
                width: 30,
                height: 30,
                color: Colors.black,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Leave",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Image.asset(
                "images/medical.png",
                width: 30,
                height: 30,
                color: Colors.black,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Medical",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Image.asset(
                "images/loan.png",
                width: 30,
                height: 30,
                color: Colors.black,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Loan",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Image.asset(
                "images/rupee.png",
                width: 30,
                height: 30,
                color: Colors.black,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Payslip",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Image.asset(
                "images/hand.png",
                width: 30,
                height: 30,
                color: Colors.black,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "View All Suggestions",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Image.asset(
                "images/visibility.png",
                width: 30,
                height: 30,
                color: Colors.black,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "View All Employee",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Image.asset(
                "images/documents.png",
                width: 30,
                height: 30,
                color: Colors.black,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Documents",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Image.asset(
                "images/learning.png",
                width: 30,
                height: 30,
                color: Colors.black,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Learning",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Image.asset(
                "images/gallery.png",
                width: 30,
                height: 30,
                color: Colors.black,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Gallery",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Image.asset(
                "images/any.png",
                width: 30,
                height: 30,
                color: Colors.black,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Help Desk",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
