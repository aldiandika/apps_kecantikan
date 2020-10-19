import 'package:apps_kecantikan/pages/login_page.dart';
import 'package:apps_kecantikan/pages/registration_biodata_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Sign Up'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context, 'Back to Login');
          },
        ),
        backgroundColor: Color(0xFF986756),
      ),
      body: Container(
        color: Color(0xFFFFF3F0),
        padding: EdgeInsets.symmetric(
          vertical: 40.0,
          horizontal: 40.0,
        ),
        alignment: Alignment.center,
        child: Center(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter email',
                  labelStyle: TextStyle(
                    color: Color(0xFF986756),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(
                      color: Color(0xFF986756),
                      width: 1.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(
                      color: Color(0xFF986756),
                      width: 1.5,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: Color(0xFF986756),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(
                      color: Color(0xFF986756),
                      width: 1.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(
                      color: Color(0xFF986756),
                      width: 1.5,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Re-Type Password',
                  labelStyle: TextStyle(
                    color: Color(0xFF986756),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(
                      color: Color(0xFF986756),
                      width: 1.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(
                      color: Color(0xFF986756),
                      width: 1.5,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                width: double.infinity,
                height: 52.0,
                child: RaisedButton(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 14.0),
                  ),
                  color: Color(0xFF986756),
                  textColor: Colors.white,
                  elevation: 3.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 20.0),
                child: Stack(
                  children: [
                    Divider(
                      color: Color(0xFF986756),
                      thickness: 1.0,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'If you have account already',
                        style: TextStyle(
                          backgroundColor: Color(0xFFFFF3F0),
                          color: Color(0xFF986756),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 52.0,
                child: RaisedButton(
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 14.0),
                  ),
                  color: Colors.white,
                  textColor: Color(0xFF986756),
                  elevation: 3.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
