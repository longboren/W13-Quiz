import 'package:flutter/material.dart';
import 'package:w13_quiz/ui/groceries/grocery_search.dart';
import 'package:w13_quiz/ui/groceries/grocery_list.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.stackID});

  final String stackID;

  @override
  State<Home> createState() => _HomeState();
}

enum GroceryTab { GroceryListTab, GrocerySearchTab }

class _HomeState extends State<Home> {
  GroceryTab _currentTab = GroceryTab.GroceryListTab;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Grocery App')),
      body: IndexedStack(
        index: _currentTab.index,
        children: [
          GroceryList(stackID: widget.stackID),
          GrocerySearch(stackID: widget.stackID),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).colorScheme.primary,
        currentIndex: _currentTab.index,
        onTap: (index) {
          setState(() {
            _currentTab = GroceryTab.values[index];
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_grocery_store),
            label: 'Grocery List',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        ],
      ),
    );
  }
}
