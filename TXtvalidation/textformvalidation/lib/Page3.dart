import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  final formkey = GlobalKey<FormState>();
  String userName = "";
  String Password = "";
  String email = "";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Form(
          key: formkey,
          child: Container(
            transform: Matrix4.translationValues(0, -36, 0),
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 24),
             itemBuilder: (context, index) {
               return Column(
children: [
  buildUserName(),
  buildEmail(),
  buildPassWord(),
  buildSubmit()
],
               );
             },
            ),
          )),
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
        child: Text("Submit"),
      ));
}
