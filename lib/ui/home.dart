import 'package:flutter/material.dart';
import './trending.dart';
import './following.dart';
import './HomePage.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> _widgetlist = [
    HomePageBody(),
    Trending(),
    Following()
  ];
  int _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blueGrey.shade600,
          currentIndex: _currentindex,
          type: BottomNavigationBarType.fixed,
          onTap: (index){
            setState(() {
              _currentindex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(
              Icons.home
            ),
            title: Text('Home')
            ),
            BottomNavigationBarItem(icon: Icon(
                Icons.trending_up
            ),
                title: Text('Trending')
            ),
            BottomNavigationBarItem(icon: Icon(
                Icons.favorite
            ),
                title: Text('Following')
            ),
          ]),
      body: _widgetlist[_currentindex],
    );
  }
}
