import 'package:apps_kecantikan/widgets/button_Booking_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'chat_page.dart';

class DermatologistBookingDetail extends StatelessWidget {
  double heightScreen = Get.height;
  double widthScreen = Get.width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dermatologist Booking Detail"),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: 300,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Color(0xffD6D6D6),
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Text("No. Booking : 210/212/za/110920",
                    style: TextStyle(fontWeight: FontWeight.w500)),
              ),
              Divider(
                color: Color(0xffD6D6D6),
                thickness: 1,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                margin: EdgeInsets.only(bottom: 5),
                child: Text("Tanggal : 11 September 2020",
                    style: TextStyle(fontWeight: FontWeight.w500)),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Text("Jam : 09.00",
                    style: TextStyle(fontWeight: FontWeight.w500)),
              ),
              Divider(
                color: Color(0xffD6D6D6),
                thickness: 1,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                margin: EdgeInsets.only(bottom: 30),
                child: Text("Dermatologist : dr. Zara Spk.",
                    style: TextStyle(fontWeight: FontWeight.w500)),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Text("Klinik Jaya Abadi",
                    style: TextStyle(fontWeight: FontWeight.w500)),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Text("Jalan tani Mulya 41",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Color(0xffB6AAAA))),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Text("Bandung",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Color(0xffB6AAAA))),
              ),
              Expanded(child: Container()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonBooking(
                    text: "Cancel",
                    fontSize: 10,
                    txtColor: Colors.blue,
                    bgnColor: Colors.white,
                  ),
                  SizedBox(width: 20),
                  ButtonBooking(
                    text: "Reschedule",
                    fontSize: 10,
                    txtColor: Colors.white,
                    bgnColor: Colors.blue,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
