import 'package:flutter/material.dart';
import 'package:test_project/estate_page.dart';
import 'package:test_project/home_page.dart';
import 'package:test_project/homes_page.dart';

class AppBottomNavBar extends StatefulWidget {
  @override
  _AppBottomNavBarState createState() => _AppBottomNavBarState();
}

class _AppBottomNavBarState extends State<AppBottomNavBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    EstatePage(),
    HomesPage(),
    HomePage()
  ];
  void onTappedBar(int index){
    setState(() {
      _currentIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: onTappedBar,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 20.0,
            ),
            title: Text('Home')
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 20.0,
            ),
            title: Text('Estates')
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 20.0,
            ),
            title: Text('Homes')
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              size: 20.0,
            ),
            title: Text('Favorite')
          ),
        ],
      ),
    );
  }
}