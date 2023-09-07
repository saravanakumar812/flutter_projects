import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  final formkey = GlobalKey<FormState>();
  String userName = "";
  String Password = "";
  String email = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(
                  height: 150,
                ),
                Center(
                  child: CircleAvatar(
                    radius: 36,
                    foregroundImage: NetworkImage(
                        "https://img.freepik.com/free-photo/flower-that-is-pink-orange_1340-42920.jpg"),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: buildUserName(),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: buildEmail(),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: buildPassWord(),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: buildSubmit(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildUserName() => TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "User Name",
        ),
        validator: (value) {
          final pattern = r'(^[a-zA-Z]+\.[a-zA-Z]+$)';
          final regExp = RegExp(pattern);
          if (!regExp.hasMatch(value!)) {
            return "Enter the valid user name ";
          } else {
            return null;
          }
        },
        onSaved: (value) => setState(() {
          userName = value!;
        }),
      );

  Widget buildEmail() => TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Email",
        ),
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          final pattern = r'(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)';
          final regExp = RegExp(pattern);

          if (!regExp.hasMatch(value!)) {
            return "Enter valid email ";
          } else {
            return null;
          }
        },
        onSaved: (value) => setState(() {
          email = value!;
        }),
      );
  Widget buildPassWord() => TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Password",
        ),
        validator: (value) {
          if (value!.length < 6) {
            return "Password  must be atleast 6 numbers ";
          } else {
            return null;
          }
        },
        onSaved: (value) => setState(() {
          Password = value!;
        }),
        obscureText: true,
      );

  Widget buildSubmit() => TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.all(20),
        minimumSize: Size(155, 40),
        side: BorderSide(width: 2, color: Colors.grey),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        primary: Colors.white,
        backgroundColor: Colors.red,
      ),
      onPressed: () {
        final isValid = formkey.currentState!.validate();
        if (isValid) {
          formkey.currentState!.save();
          final snackBar = SnackBar(
            content: Text("submitting form"),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      child: Center(
        child: Text(
          "Submit",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ));
}
