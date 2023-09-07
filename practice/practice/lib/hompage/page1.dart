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
    return CustomScrollView(
      slivers: [
        // Add a floating search bar to the app
        SliverAppBar(
          floating: true,
          // Use a Material design search bar
          title: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: 'Search...',
              // Add a clear button to the search bar
              suffixIcon: IconButton(
                icon: Icon(
                  Icons.clear,
                  color: Colors.black,
                ),
                onPressed: () => _searchController.clear(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
