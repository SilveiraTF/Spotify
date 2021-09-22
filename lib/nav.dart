import 'package:flutter/material.dart';

class Nav extends StatefulWidget {
  @override
  State createState() {
    return _NavState();
  }
}

class _NavState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(('teste'))),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ('Home2'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ('Home3'),
          )
        ],
      ),
    );
  }
}
