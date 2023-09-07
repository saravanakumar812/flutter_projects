import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final IconData icon;
  final String exerciseName;
  final int Numbers;
  final color;
  const MyWidget(
      {Key? key,
      required this.icon,
      required this.exerciseName,
      required this.Numbers,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      color: color,
                      padding: EdgeInsets.all(16),
                      child: Icon(
                        icon,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        exerciseName,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        Numbers.toString() + "Exercises",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
              Icon(Icons.more_horiz)
            ],
          )),
    );
  }
}
