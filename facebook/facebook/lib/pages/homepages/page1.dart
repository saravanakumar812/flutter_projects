import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

final TextEditingController _searchController = TextEditingController();

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      child: Row(children: [
        SizedBox(
          height: 30,
          width: 10,
        ),
        Container(
          child: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('images/pp4.jpg'),
          ),
        ),
        Container(
          width: 275,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              // Add padding around the search bar
              //padding: const EdgeInsets.symmetric(horizontal: 8.0),
              // Use a Material design search bar
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search...',
                  // Add a clear button to the search bar
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () => _searchController.clear(),
                  ),
                  // Add a search icon or button to the search bar
                  prefixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      // Perform the search here
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          child: IconButton(
              color: Colors.green, onPressed: () {}, icon: Icon(Icons.image)),
        ),
      ]),
    );
  }
}
