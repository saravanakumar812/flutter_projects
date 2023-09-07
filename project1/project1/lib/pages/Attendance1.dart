import 'package:flutter/material.dart';
import 'package:project1/utlis.dart';
// import 'package:project2/Utilis.dart';

class Attendance2 extends StatelessWidget {
  const Attendance2({super.key});

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
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              width: 360,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'images/rectangle-28-bg.png',
                  ),
                ),
              ),
              child: Container(
                margin: EdgeInsets.only(top: 160),
                decoration: BoxDecoration(
                  color: Color(0xe5deeeff),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      //  margin: EdgeInsets.all(15),
                      height: 20,
                      width: 20,
                      child: Image.asset(
                        "images/tabler-icon-map-pin-filled.png",
                        height: 20,
                        width: 20,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text(
                        'Navalur,Chennai',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          color: Color(0xff000000),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 130),
                    child: Text(
                      'CHECKED IN  ',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        height: 1.5,
                        color: Color(0xff0771de),
                      ),
                    ),
                  ),
                  Text(
                    // amCJm (1:545)
                    '9:00AM',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      right: 120,
                    ),
                    child: Text(
                      'CHECKED OUT ',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        height: 1.5,
                        color: Color(0xff0771de),
                      ),
                    ),
                  ),
                  Text(
                    // amCJm (1:545)
                    '6:00PM',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      right: 60,
                    ),
                    child: Text(
                      'TOTAL HOURS WORKED ',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        height: 1.5,
                        color: Color(0xff0771de),
                      ),
                    ),
                  ),
                  Text(
                    // amCJm (1:545)
                    '8:00:00',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      right: 130,
                    ),
                    child: Text(
                      'BREAK HOURS',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        height: 1.5,
                        color: Color(0xff0771de),
                      ),
                    ),
                  ),
                  Text(
                    // amCJm (1:545)
                    '1:00:00',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
