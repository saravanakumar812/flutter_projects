import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modernui/pages/SmartDevices.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double horizontalPadding = 40;
  final double verticalPadding = 25;

  List mySmartDevices = [
    //["SmartDeviceName", "iconPath","powerStatus"]
    ["Smart Light", "lib/icons/light.png", true],
    ["Smart Ac", "lib/icons/Ac.png", false],
    ["Smart Fan", "lib/icons/fan.png", false],
    ["Smart Tv", "lib/icons/led.png", false]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // custom Appbar

          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding, vertical: verticalPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "lib/icons/menu.png",
                  height: 60,
                  color: Colors.grey[800],
                ),
                Icon(
                  Icons.person,
                  size: 45,
                  color: Colors.grey[800],
                )
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Home,",
                  style: TextStyle(fontSize: 20, color: Colors.grey[700]),
                ),
                Text(
                  "MITCH KOKO",
                  style:
                      GoogleFonts.bebasNeue(textStyle: TextStyle(fontSize: 72)),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Divider(
              thickness: 1,
              color: Colors.grey,
            ),
          ),

          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Text(
              "Smart Devices",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.grey[800]),
            ),
          ),
          Expanded(
              child: GridView.builder(
                  itemCount: mySmartDevices.length,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1 / 1.3, crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return SmartDevices(
                      SmartDeviceName: mySmartDevices[index][0],
                      iconPath: mySmartDevices[index][1],
                      powerOn: mySmartDevices[index][2],
                      onChanged: (value) => powerSwitchChanged(value, index),
                    );
                  }))
        ]),
      ),
    );
  }

  powerSwitchChanged(bool value, int index) {
    setState(() {
      mySmartDevices[index][2] = value;
    });
  }
}
