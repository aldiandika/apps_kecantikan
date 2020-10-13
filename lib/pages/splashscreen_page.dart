import 'dart:async';

import 'package:apps_kecantikan/pages/login_page.dart';
import 'package:apps_kecantikan/widgets/bottom_nav_widget.dart';
import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  @override
  void initState(){
    super.initState();
    startSplash();
  }

  startSplash() async {
    var duration = const Duration(seconds: 3);

    return Timer(duration, () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Center(
        child: Container(
          height: 160.0,
          width: 180.0,
          color: Colors.blueGrey,
          child: Image.asset(
            'assets/images/logokecantikan.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
