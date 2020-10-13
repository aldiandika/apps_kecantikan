import 'package:apps_kecantikan/widgets/bottom_nav_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        color: Color(0xFFFFF3F0),
        child: Column(
          children: [
            // Appbar
            Container(
              height: MediaQuery.of(context).size.height * 0.04,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFF986756),
            ),

            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 40.0,
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        constraints: BoxConstraints(
                          maxHeight: 200.0,
                          maxWidth: 200.0,
                        ),
                        child: Image.asset(
                          'assets/images/logonobg.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                labelText: 'username',
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
                                labelText: 'password',
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
                              height: 10.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              alignment: Alignment.centerRight,
                              child: FlatButton(
                                child: Text(
                                  'Forget password ?',
                                  style: TextStyle(
                                    color: Color(0xFF986756),
                                  ),
                                ),
                                padding: EdgeInsets.all(0.0),
                                onPressed: () => print('Button pressed'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 52.0,
                              child: RaisedButton(
                                child: Text(
                                  'Login',
                                  style: TextStyle(fontSize: 14.0),
                                ),
                                color: Color(0xFF986756),
                                textColor: Colors.white,
                                elevation: 3.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12.0)),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            BottomNavWidget()),
                                  );
                                },
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
                                      'Or if you don\'t have account',
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
                                  'Sign Up',
                                  style: TextStyle(fontSize: 14.0),
                                ),
                                color: Colors.white,
                                textColor: Color(0xFF986756),
                                elevation: 3.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12.0)),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            BottomNavWidget()),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
