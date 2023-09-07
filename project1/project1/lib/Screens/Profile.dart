import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/pages/editProfile.dart';
import 'package:project1/utlis.dart';
// import 'package:project2/Utilis.dart';
// import 'package:project2/page1/editProfile.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.white,
              )),
          title: Text(
            "Profile Info",
            style: SafeGoogleFont(
              "Poppins",
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 20),
                    child: TextButton(
                        style: TextButton.styleFrom(
                          minimumSize: Size(120, 20),
                          side: BorderSide(width: 2, color: Colors.blue),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          primary: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditProfile()));
                        },
                        child: Center(
                          child: Text(
                            "Edit Profile",
                            style: SafeGoogleFont("Poppins",
                                //fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.blue),
                          ),
                        )),
                  ),
                ],
              ),
              Center(
                child: Image.asset(
                  "images/icon-person-4.jpg",
                  width: 70,
                  height: 70,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Text(
                "Balaji Dayalan",
                style: SafeGoogleFont(
                  "Poppins",
                  //fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 160,
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "images/tabler-icon-brand-linkedin.png",
                        width: 25,
                        height: 20,
                      )
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Image.asset(
                        "images/tabler-icon-mail.png",
                        width: 25,
                        height: 22,
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
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
                    children: [
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
                    children: [
                      Text(
                        "01/01/1990",
                        style: GoogleFonts.poppins(
                            // fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
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
                    children: [
                      Text(
                        "04/04/2000",
                        style: GoogleFonts.poppins(
                            // fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
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
                    children: [
                      Text(
                        "Software Development",
                        style: GoogleFonts.poppins(
                            // fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
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
                    children: [
                      Text(
                        "Sr.software developer",
                        style: GoogleFonts.poppins(
                            // fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
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
                    children: [
                      Text(
                        "Balad4@gmail.com",
                        style: GoogleFonts.poppins(
                            // fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
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
                    children: [
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
                    children: [
                      Text(
                        "883 808 8825",
                        style: GoogleFonts.poppins(
                            // fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
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
                    children: [
                      Text(
                        "Navalur",
                        style: GoogleFonts.poppins(
                            // fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
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
                    children: [
                      Text(
                        "Navalur",
                        style: GoogleFonts.poppins(
                            // fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
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
                    children: [
                      Text(
                        "Chennai",
                        style: GoogleFonts.poppins(
                            // fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
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
                    children: [
                      Text(
                        "India",
                        style: GoogleFonts.poppins(
                            // fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
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
                    children: [
                      Text(
                        "600 130",
                        style: GoogleFonts.poppins(
                            // fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
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
                    children: [
                      Text(
                        "Tamilnadu",
                        style: GoogleFonts.poppins(
                            // fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
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
                    children: [
                      Text(
                        "-",
                        style: TextStyle(fontWeight: FontWeight.bold),
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
                    children: [
                      Text(
                        "-",
                        style: TextStyle(fontWeight: FontWeight.bold),
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
                    children: [
                      Text(
                        "-",
                        style: TextStyle(fontWeight: FontWeight.bold),
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
                    children: [
                      Text(
                        "Balaji",
                        style: GoogleFonts.poppins(
                            // fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
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
                    children: [
                      Text(
                        "B.Tech",
                        style: GoogleFonts.poppins(
                            // fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
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
                    children: [
                      Text(
                        "Karunya",
                        style: GoogleFonts.poppins(
                            // fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
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
                    children: [
                      Text(
                        "1999",
                        style: GoogleFonts.poppins(
                            // fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
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
                    children: [
                      Text(
                        "90%",
                        style: GoogleFonts.poppins(
                            // fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
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
          ),
        ));
  }
}
