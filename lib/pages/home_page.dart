import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            //appbar
            Container(
              color: Color(0xFF25A0DE),
              height: 120.0,
              padding: EdgeInsets.all(8.0),
              alignment: Alignment.bottomCenter,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  maxRadius: 20.0,
                ),
                title: Text(
                  'Lia Adelia',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: 32.0,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            //body
            // Icon list
            Container(
              margin: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 55.0,
                        width: 55.0,
                        child: RaisedButton(
                          child: Icon(
                            Icons.phone,
                            color: Colors.grey,
                          ),
                          onPressed: () {},
                          color: Color(0xFFC7ECFA),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 6.0),
                      Text(
                        'Dermatologist',
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 55.0,
                        width: 55.0,
                        child: RaisedButton(
                          child: Icon(
                            Icons.phone,
                            color: Colors.grey,
                          ),
                          onPressed: () {},
                          color: Color(0xFFC7ECFA),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 6.0),
                      Text(
                        'Telemedicine',
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 55.0,
                        width: 55.0,
                        child: RaisedButton(
                          child: Icon(
                            Icons.people,
                            color: Colors.grey,
                          ),
                          onPressed: () {},
                          color: Color(0xFFC7ECFA),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 6.0),
                      Text(
                        'Care',
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 55.0,
                        width: 55.0,
                        child: RaisedButton(
                          child: Icon(
                            Icons.collections_bookmark,
                            color: Colors.grey,
                          ),
                          onPressed: () {},
                          color: Color(0xFFC7ECFA),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 6.0),
                      Text(
                        'MUA',
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 55.0,
                        width: 55.0,
                        child: RaisedButton(
                          child: Icon(
                            Icons.card_giftcard,
                            color: Colors.grey,
                          ),
                          onPressed: () {},
                          color: Color(0xFFC7ECFA),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 6.0),
                      Text(
                        'Products',
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //End of Icon list

            // scrolled content
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
