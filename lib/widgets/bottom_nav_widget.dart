import 'package:apps_kecantikan/pages/home_page.dart';
import 'package:apps_kecantikan/pages/inbox_page.dart';
import 'package:apps_kecantikan/pages/mybooking_page.dart';
import 'package:apps_kecantikan/pages/profile_page.dart';
import 'package:flutter/material.dart';

class BottomNavWidget extends StatefulWidget {
  final int tabIndex;

  const BottomNavWidget({Key key, this.tabIndex}) : super(key: key);

  @override
  _BottomNavWidgetState createState() => _BottomNavWidgetState();
}

class _BottomNavWidgetState extends State<BottomNavWidget> {
  int _selectedTabIndex = 0;

  @override
  void initState() {
    if(widget.tabIndex != null){
      _selectedTabIndex = widget.tabIndex;
    }else{
      _selectedTabIndex = 0;
    }
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final listPage = <Widget>[
      Homepage(),
      MybookingPage(),
      InboxPage(),
      ProfilePage(),
    ];

    final _bottomNavBar = BottomNavigationBar(
      currentIndex: _selectedTabIndex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Stack(
            children: [
              Icon(Icons.calendar_today),
              Positioned(
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 12,
                    minHeight: 12,
                  ),
                  child: Text(
                    '3',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          title: Text('My Booking'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.inbox),
          title: Text('Inbox'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('Profile'),
        ),
      ],
      unselectedItemColor: Colors.blueGrey,
      selectedItemColor: Color(0xFF25A0DE),
      elevation: 10.0,
      onTap: _selectPage,
    );

    return MaterialApp(
      home: Scaffold(
        body: listPage[_selectedTabIndex],
        bottomNavigationBar: _bottomNavBar,
      ),
    );
  }
}
