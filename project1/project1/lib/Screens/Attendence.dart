import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/pages/Attendance1.dart';
import 'package:project1/utlis.dart';
//import 'package:google_fonts/google_fonts.dart';
// import 'package:project2/Utilis.dart';
// import 'package:project2/page1/attendance.dart';

class Attendance1 extends StatelessWidget {
  const Attendance1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Attendance",
          style: SafeGoogleFont(
            "Poppins",
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new)),
      ),
      body: Container(
        width: double.infinity,
        //height: double.infinity,
        decoration: BoxDecoration(color: Colors.white),

        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, left: 20),
                child: Text("Attendance Manager",
                    style: SafeGoogleFont("Poppins",
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue)),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 20),
                      width: 160,
                      height: 40,
                      //padding: EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            hintText: "Emp.Id",
                            hintStyle: GoogleFonts.poppins(
                                color: Colors.grey[500],
                                fontWeight: FontWeight.w500),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:
                                  BorderSide(width: 2, color: Colors.blue),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:
                                  BorderSide(width: 2, color: Colors.blue),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20),
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.blue),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 13,
                            ),
                            Container(
                              width: 100,
                              child: Text(
                                "June,2023",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              child: IconButton(
                                  padding: EdgeInsets.only(
                                    bottom: 5,
                                  ),
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_drop_down_rounded,
                                    color: Colors.blue,
                                    size: 40,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, left: 20),
                child: Container(
                  //padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Employee details",
                    style: SafeGoogleFont("Poppins",
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue),
                  ),
                ),
              ),
              Container(
                child: Row(children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Employee Id",
                              style: GoogleFonts.poppins(
                                  color: Colors.grey[500],
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 215,
                        ),
                        Column(
                          children: [
                            Text(
                              "A1200",
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ]),
              ),
              Container(
                child: Row(children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 10, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Employee Name",
                              style: GoogleFonts.poppins(
                                  color: Colors.grey[500],
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 175,
                        ),
                        Column(
                          children: [
                            Text(
                              "Balaji D",
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ]),
              ),
              Container(
                child: Row(children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 10, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Employee Id",
                              style: GoogleFonts.poppins(
                                  color: Colors.grey[500],
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 207,
                        ),
                        Column(
                          children: [
                            Text(
                              "Admin",
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ]),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            child: Text("Emp.ID",
                                style: GoogleFonts.poppins(
                                    fontSize: 17,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            child: Text("Date",
                                style: GoogleFonts.poppins(
                                    fontSize: 17,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 50),
                            child: Text("In",
                                style: GoogleFonts.poppins(
                                    fontSize: 17,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 50),
                            child: Text("Out",
                                style: GoogleFonts.poppins(
                                    fontSize: 17,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 30),
                            child: Text("Status",
                                style: GoogleFonts.poppins(
                                    fontSize: 17,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 45),
                            child: Text("1210",
                                style: GoogleFonts.poppins(
                                    // fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 25),
                            child: Text("2023-06-23",
                                style: GoogleFonts.poppins(
                                    // fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 7),
                            child: Text("9.00AM",
                                style: GoogleFonts.poppins(
                                    // fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 13),
                            child: Text("6.00PM",
                                style: GoogleFonts.poppins(
                                    // fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 45),
                            child: Text("1",
                                style: GoogleFonts.poppins(
                                    // fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 45),
                            child: Text("1210",
                                style: GoogleFonts.poppins(
                                    // fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 25),
                            child: Text("2023-06-23",
                                style: GoogleFonts.poppins(
                                    // fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 7),
                            child: Text("9.00AM",
                                style: GoogleFonts.poppins(
                                    // fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 13),
                            child: Text("6.00PM",
                                style: GoogleFonts.poppins(
                                    // fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 45),
                            child: Text("1",
                                style: GoogleFonts.poppins(
                                    // fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 45),
                            child: Text("1210",
                                style: GoogleFonts.poppins(
                                    // fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 25),
                            child: Text("2023-06-23",
                                style: GoogleFonts.poppins(
                                    // fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 7),
                            child: Text("9.00AM",
                                style: GoogleFonts.poppins(
                                    // fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 14),
                            child: Text(
                              "6.00PM",
                              style: TextStyle(
                                  //fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 45),
                            child: Text("1",
                                style: GoogleFonts.poppins(
                                    // fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 45),
                            child: Text("1210",
                                style: GoogleFonts.poppins(
                                    // fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 25),
                            child: Text("2023-06-23",
                                style: GoogleFonts.poppins(
                                    // fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 7),
                            child: Text("9.00AM",
                                style: GoogleFonts.poppins(
                                    // fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 12),
                            child: Text("6.00PM",
                                style: GoogleFonts.poppins(
                                    // fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 45),
                            child: Text("1",
                                style: GoogleFonts.poppins(
                                    // fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 45),
                            child: Text("1210",
                                style: GoogleFonts.poppins(
                                    // fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 25),
                            child: Text("2023-06-23",
                                style: GoogleFonts.poppins(
                                    // fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 7),
                            child: Text("9.00AM",
                                style: GoogleFonts.poppins(
                                    // fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 13),
                            child: Text("6.00PM",
                                style: GoogleFonts.poppins(
                                    // fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 45),
                            child: Text("1",
                                style: GoogleFonts.poppins(
                                    // fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 45),
                            child: Text("1210",
                                style: GoogleFonts.poppins(
                                    // fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 25),
                            child: Text("2023-06-23",
                                style: GoogleFonts.poppins(
                                    // fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 7),
                            child: Text("9.00AM",
                                style: GoogleFonts.poppins(
                                    // fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 13),
                            child: Text("6.00PM",
                                style: GoogleFonts.poppins(
                                    // fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 45),
                            child: Text("1",
                                style: GoogleFonts.poppins(
                                    // fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 45),
                            child: Text("1210",
                                style: GoogleFonts.poppins(
                                    // fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 25),
                            child: Text("2023-06-23",
                                style: GoogleFonts.poppins(
                                    // fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 7),
                            child: Text("9.00AM",
                                style: GoogleFonts.poppins(
                                    // fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 13),
                            child: Text("6.00PM",
                                style: GoogleFonts.poppins(
                                    // fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 45),
                            child: Text("1",
                                style: GoogleFonts.poppins(
                                    // fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: IconButton(
                          onPressed: () {},
                          icon: Image.asset("images/arrowback.png")),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 70),
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.blue),
                        child: Center(
                          child: Text(
                            "1",
                            style: GoogleFonts.poppins(
                                // fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Container(
                        child: Center(
                          child: Text(
                            "2",
                            style: GoogleFonts.poppins(
                                // fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Container(
                        child: Center(
                          child: Text(
                            "3",
                            style: GoogleFonts.poppins(
                                // fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Container(
                        child: Center(
                          child: Text(
                            "4",
                            style: GoogleFonts.poppins(
                                // fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Container(
                        child: Center(
                          child: Text(
                            "5",
                            style: GoogleFonts.poppins(
                                // fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Container(
                        child: Center(
                          child: Text(
                            "6",
                            style: GoogleFonts.poppins(
                                // fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 70),
                      child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            "images/circle-right-icon.png",
                            color: Colors.blue,
                          )),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Center(
                    child: FloatingActionButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Attendance2()));
                  },
                  child: Icon(Icons.add),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
