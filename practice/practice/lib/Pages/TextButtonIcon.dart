import 'package:flutter/material.dart';

class ButtonIcon extends StatefulWidget {
  const ButtonIcon({super.key});

  @override
  State<ButtonIcon> createState() => _ButtonIconState();
}

class _ButtonIconState extends State<ButtonIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        Container(
            color: Colors.amber,
            child: TextButton.icon(
                onPressed: () {},
                icon: Image.asset(
                  "images/google-logo-9808.png",
                  width: 20,
                  height: 20,
                ),
                label: Text("Continue with google")))
      ],
    ));
  }
}
