import 'package:apps_kecantikan/widgets/schedule_doctor_widget.dart';
import 'package:apps_kecantikan/widgets/button_Booking_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TelemedicineDoctorDetails extends StatelessWidget {
  double heightScreen = Get.height;
  double widthScreen = Get.width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffF5F5F5),
        padding: EdgeInsets.symmetric(vertical: 60.0),
        child: Center(
          child: Container(
            width: widthScreen,
            margin: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 2, color: Color(0xffD6D6D6)),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/dokter_2.jpg',
                    width: 80,
                    height: 80,
                    fit: BoxFit.fitHeight,
                  ),
                  Text(
                    "dr. Zara Spk",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.layers,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Klinik Jaya Abadi",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "No. izin praktek : 121.21.232.213",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffB6AAAA),
                    ),
                  ),
                  Text(
                    "Bandung",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffB6AAAA),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: widthScreen * 0.7,
                    height: heightScreen * 0.33,
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    decoration: BoxDecoration(
                      // color: Colors.blue,
                      border: Border.all(width: 2, color: Color(0xffD6D6D6)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Jadwal Praktik",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        ScheduleDoctor(hari: "Senin", jam: "13.00 - 15.00"),
                        ScheduleDoctor(hari: "Selasa", jam: "13.00 - 15.00"),
                        ScheduleDoctor(hari: "Rabu", jam: "Libur"),
                        ScheduleDoctor(hari: "Kamis", jam: "13.00 - 15.00"),
                        ScheduleDoctor(hari: "Jum'at", jam: "Libur"),
                        ScheduleDoctor(hari: "Sabtu", jam: "13.00 - 15.00"),
                        ScheduleDoctor(hari: "Minggu", jam: "Libur"),
                      ],
                    ),
                  ),
                  SizedBox(height: heightScreen * 0.03),
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
                          Get.toNamed('/bookingTelemedicineMenu');
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
