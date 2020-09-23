import 'package:apps_kecantikan/widgets/button_Booking_widget.dart';
import 'package:apps_kecantikan/widgets/form_booking_widget.dart';
import 'package:apps_kecantikan/widgets/form_camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingTelemedecineMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double heightScreen = Get.height;
    double widthScreen = Get.width;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        color: Color(0xffF5F5F5),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: widthScreen,
                height: heightScreen * 0.14,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "dr.Zara Spk.",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Klinik Jaya Abadi",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xffB6AAAA),
                      ),
                    ),
                    Text(
                      "Jalan Muara rajeun No. 13",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xffB6AAAA),
                      ),
                    ),
                    Text(
                      "Bandung",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xffB6AAAA),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: widthScreen,
                height: heightScreen * 0.4,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                decoration: BoxDecoration(
                  color: Color(0xffF5F5F5),
                  border: Border.all(width: 2, color: Color(0xffD6D6D6)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text(
                      "Pilih Tanggal Praktik",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      width: widthScreen,
                      height: 175,
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      // color: Colors.blue,
                      child: Container(
                        width: widthScreen,
                        padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                        // height: 180,
                        // color: Colors.white,
                        child: Column(
                          children: [
                            FormBooking(
                              text: "Tanggal",
                              height: heightScreen * 0.035,
                            ),
                            FormBooking(
                              text: "Jam",
                              height: heightScreen * 0.035,
                            ),
                            FormCamera(
                              text: "Foto wajah",
                              height: heightScreen * 0.05,
                            ),
                            FormBooking(
                              text: "Keluhan",
                              height: heightScreen * 0.04,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ButtonBooking(
                          text: "Back",
                          txtColor: Colors.blue,
                          bgnColor: Colors.white,
                          onPressed: () {
                            Get.back();
                          },
                        ),
                        SizedBox(width: 25),
                        ButtonBooking(
                          text: "Booking",
                          txtColor: Colors.white,
                          bgnColor: Colors.blue,
                          onPressed: () {
                            // Get.toNamed('/bookingMenu');
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
