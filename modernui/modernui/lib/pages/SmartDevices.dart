import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SmartDevices extends StatelessWidget {
  final String SmartDeviceName;
  final String iconPath;
  final bool powerOn;
  void Function(bool)? onChanged;

  SmartDevices(
      {super.key,
      required this.SmartDeviceName,
      required this.iconPath,
      required this.powerOn,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25),
      child: Container(
        decoration: BoxDecoration(
            color: powerOn ? Colors.grey[800] : Colors.grey[200],
            borderRadius: BorderRadius.circular(12)),
        padding: EdgeInsets.symmetric(vertical: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              iconPath,
              height: 65,
              color: powerOn ? Colors.white : Colors.black,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        SmartDeviceName,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: powerOn ? Colors.white : Colors.black),
                      )),
                ),
                Transform.rotate(
                    angle: pi / 2,
                    child:
                        CupertinoSwitch(value: powerOn, onChanged: onChanged))
              ],
            )
          ],
        ),
      ),
    );
  }
}
