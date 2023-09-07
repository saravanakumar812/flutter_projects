import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/Screens/Profile.dart';
import 'package:project1/utlis.dart';
// import 'package:project2/Utilis.dart';
// import 'package:project2/pages/profile.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit Profile",
          style: SafeGoogleFont(
            "Poppins",
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            },
            icon: Icon(Icons.arrow_back_ios_new)),
      ),
      body: Container(
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50, left: 30),
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.blue),
                            borderRadius: BorderRadius.circular(30)),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Color.fromARGB(74, 199, 226, 247),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                "Change photo",
                                style: SafeGoogleFont(
                                  "Poppins",
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: Text(
                                "Edit photo",
                                style: SafeGoogleFont(
                                  "Poppins",
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Personal details",
                        style: SafeGoogleFont("Poppins",
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Name",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.grey[500],
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 135,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Balaji",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: SizedBox(
                            width: 186,
                            height: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffa1a1a1),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Emp.ID",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.grey[500],
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 129,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "000 007",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: SizedBox(
                            width: 186,
                            height: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffa1a1a1),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "DOB",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.grey[500],
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 148,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "01/01/1990",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: SizedBox(
                            width: 186,
                            height: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffa1a1a1),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "DOJ",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.grey[500],
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 149,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "04/04/2000",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: SizedBox(
                            width: 186,
                            height: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffa1a1a1),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Department",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.grey[500],
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 92,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Software Development",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: SizedBox(
                            width: 186,
                            height: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffa1a1a1),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Designation",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.grey[500],
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 93,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sr.software developer",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: SizedBox(
                            width: 186,
                            height: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffa1a1a1),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Office Email",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.grey[500],
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 94,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Balad4@gmail.com",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: SizedBox(
                            width: 186,
                            height: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffa1a1a1),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Bio metric",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.grey[500],
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 107,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "000 007",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: SizedBox(
                            width: 186,
                            height: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffa1a1a1),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Mobile number",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.grey[500],
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 71,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "883 808 8825",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: SizedBox(
                            width: 186,
                            height: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffa1a1a1),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Address",
                        style: SafeGoogleFont("Poppins",
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Current address",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.grey[500],
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 62,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Navalur",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: SizedBox(
                            width: 186,
                            height: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffa1a1a1),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Permanent address",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.grey[500],
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 38,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Navalur",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: SizedBox(
                            width: 186,
                            height: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffa1a1a1),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "City ",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.grey[500],
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 146,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Chennai",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: SizedBox(
                            width: 186,
                            height: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffa1a1a1),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Country",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.grey[500],
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 121,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "India",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: SizedBox(
                            width: 186,
                            height: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffa1a1a1),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Zip",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.grey[500],
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 157,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "600 130",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: SizedBox(
                            width: 186,
                            height: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffa1a1a1),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "State ",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.grey[500],
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 137,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tamilnadu",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: SizedBox(
                            width: 186,
                            height: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffa1a1a1),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Payment details",
                        style: SafeGoogleFont("Poppins",
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Payment type",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.grey[500],
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 79,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "-",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: SizedBox(
                            width: 186,
                            height: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffa1a1a1),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Bank name",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.grey[500],
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 97,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "-",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: SizedBox(
                            width: 186,
                            height: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffa1a1a1),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Account no ",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.grey[500],
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 93,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "-",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: SizedBox(
                            width: 186,
                            height: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffa1a1a1),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Account holder name",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.grey[500],
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 23,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Balaji",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: SizedBox(
                            width: 186,
                            height: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffa1a1a1),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Qualification",
                        style: SafeGoogleFont("Poppins",
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Diplomo / Degree",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.grey[500],
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 53,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "B.Tech",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: SizedBox(
                            width: 186,
                            height: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffa1a1a1),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Institution name",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.grey[500],
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 62,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Karunya",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: SizedBox(
                            width: 186,
                            height: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffa1a1a1),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Passing year ",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.grey[500],
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 84,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "1999",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: SizedBox(
                            width: 186,
                            height: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffa1a1a1),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Percentage",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.grey[500],
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 96,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "90%",
                          style: GoogleFonts.poppins(
                              // fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: SizedBox(
                            width: 186,
                            height: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffa1a1a1),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                )
              ],
            )),
      ),
    );
  }
}
