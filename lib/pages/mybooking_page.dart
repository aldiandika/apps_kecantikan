import 'package:flutter/material.dart';

class MybookingPage extends StatefulWidget {
  @override
  _MybookingPageState createState() => _MybookingPageState();
}

class _MybookingPageState extends State<MybookingPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('My Booking Page'),
        ),
      ),
    );
  }
}
