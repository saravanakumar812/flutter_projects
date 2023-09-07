import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(vsync: this, length: 2);
    super.initState();
  }

  static const List<Tab> _tabs = [
    Tab(
      text: "Login",
    ),
    Tab(
      text: "Sign up",
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              child: Column(
            children: [
              Container(
                child: TabBar(
                  controller: _tabController,
                  tabs: _tabs,
                ),
              )
            ],
          )),
          Container(
              child: TabBarView(
            children: [Page4(), Page4()],
          ))
        ],
      ),
    );
  }
}
