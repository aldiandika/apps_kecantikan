import 'package:apps_kecantikan/pages/myBooking_dermatologist.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'myBooking_care.dart';
import 'myBooking_telemedicine.dart';

class MybookingPage extends StatefulWidget {
  @override
  _MybookingPageState createState() => _MybookingPageState();
}

class _MybookingPageState extends State<MybookingPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    double heightScreen = Get.height;
    double widthScreen = Get.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("My Booking"),
        centerTitle: true,
      ),
      body: Container(
        height: heightScreen,
        width: widthScreen,
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            Container(
              // padding: EdgeInsets.all(10),
              child: Row(

                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                        color: index == 0 ? Colors.blue : Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: MaterialButton(
                        child: Text(
                          "Dermatologist",
                          style: TextStyle(
                            color: index == 0 ? Colors.white : Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            index = 0;
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                        color: index == 1 ? Colors.blue : Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: MaterialButton(
                        child: Text(
                          "Telemedicine",
                          style: TextStyle(
                            color: index == 1 ? Colors.white : Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            index = 1;
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                        color: index == 2 ? Colors.blue : Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: MaterialButton(
                        child: Text(
                          "Care",
                          style: TextStyle(
                            color: index == 2 ? Colors.white : Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            index = 2;
                          });
                        },
                      ),
                    ),
                  ),

                ],
              ),
            ),
            index == 0
                ? Expanded(child: MyBookingDermatologist())
                : index == 1
                ? Expanded(child: MyBookingTelemedicine())
                : Expanded(child: MyBookingCare()),
          ],
        ),
      ),
    );
  }
}
