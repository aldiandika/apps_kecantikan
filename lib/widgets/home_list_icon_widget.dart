
import 'package:apps_kecantikan/pages/cart_page.dart';
import 'package:flutter/material.dart';

class HomeListIcon extends StatefulWidget {
  @override
  _HomeListIconState createState() => _HomeListIconState();
}

class _HomeListIconState extends State<HomeListIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CartPage()),
                    );
                  },
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
    );
  }
}
