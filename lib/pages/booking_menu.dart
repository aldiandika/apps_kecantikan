import 'package:apps_kecantikan/widgets/button_Booking_widget.dart';
import 'package:apps_kecantikan/widgets/form_booking_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double heightScreen = Get.height;
    double widthScreen = Get.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xffF5F5F5),
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 60.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: widthScreen,
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
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 4.0),
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
//                      height: 190,
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        // color: Colors.blue,
                        child: Container(
                          width: widthScreen,
                          padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 15.0),
                          // height: 180,
                          // color: Colors.white,
                          child: Column(
                            children: [
                              FormBooking(
                                text: "Tanggal",
                                height: heightScreen * 0.05,
                              ),
                              FormBooking(
                                text: "Jam",
                                height: heightScreen * 0.05,
                              ),
                              FormBooking(
                                text: "Jenis perawatan",
                                height: heightScreen * 0.05,
                              ),
                              FormBooking(
                                text: "Catatan",
                                isMultiLines: true,
                                numberOfLines: null,
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
                            txtColor: Color(0xFF986756),
                            bgnColor: Colors.white,
                            onPressed: () {
                              Get.back();
                            },
                          ),
                          SizedBox(width: 25),
                          ButtonBooking(
                            text: "Confirm",
                            txtColor: Colors.white,
                            bgnColor: Color(0xFF986756),
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
      ),
    );
  }
}
