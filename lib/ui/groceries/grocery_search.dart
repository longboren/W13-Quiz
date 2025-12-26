import 'package:flutter/material.dart';

class GrocerySearch extends StatefulWidget {
  const GrocerySearch({super.key, required this.stackID});

  final String stackID;

  @override
  State<GrocerySearch> createState() => _GrocerySearchState();
}

class _GrocerySearchState extends State<GrocerySearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          decoration: const InputDecoration(labelText: 'Search Groceries'),
        ),
      ),
    );
  }
}
