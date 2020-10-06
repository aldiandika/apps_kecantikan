import 'package:apps_kecantikan/pages/cart_page.dart';
import 'package:apps_kecantikan/pages/product_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeListIcon extends StatefulWidget {
  @override
  _HomeListIconState createState() => _HomeListIconState();
}

class _HomeListIconState extends State<HomeListIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12.0), bottomRight: Radius.circular(12.0),),
        color: Color(0xFFFFF3F0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 12,
            offset: Offset(0, 10), // changes position of shadow
          ),
        ],
      ),
      padding: EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Container(
                height: 55.0,
                width: 55.0,
                child: RaisedButton(
                  child: Image.asset(
                    'assets/icons/activity.png',
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Get.toNamed('/doctorDashboard');
                    // Get.toNamed('/klinikDashboard');
                  },
                  color: Color(0xFFE6BCA8),
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
                  color: Color(0xFF8D5C4D),
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
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Get.toNamed('/telemedicineDashboard');
                  },
                  color: Color(0xFFE6BCA8),
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
                  color: Color(0xFF8D5C4D),
                ),
              ),
            ],
          ),
//          Column(
//            children: [
//              Container(
//                height: 55.0,
//                width: 55.0,
//                child: RaisedButton(
//                  child: Icon(
//                    Icons.people,
//                    color: Colors.grey,
//                  ),
//                  onPressed: () {
//                    Get.toNamed('/klinikDashboard');
//                  },
//                  color: Color(0xFFC7ECFA),
//                  shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.all(
//                      Radius.circular(8.0),
//                    ),
//                  ),
//                ),
//              ),
//              SizedBox(height: 6.0),
//              Text(
//                'Care',
//                style: TextStyle(
//                  fontSize: 10.0,
//                  color: Colors.grey,
//                ),
//              ),
//            ],
//          ),
          Column(
            children: [
              Container(
                height: 55.0,
                width: 55.0,
                child: RaisedButton(
                  child: Icon(
                    Icons.calendar_today,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                  color: Color(0xFFE6BCA8),
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
                  color: Color(0xFF8D5C4D),
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
                  child: Image.asset(
                    'assets/icons/heart.png',
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProductPage()),
                    );
                  },
                  color: Color(0xFFE6BCA8),
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
                  color: Color(0xFF8D5C4D),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
