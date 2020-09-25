import 'package:apps_kecantikan/widgets/booking_box_widget.dart';
import 'package:apps_kecantikan/widgets/search_filter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyBookingDermatologist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double heightScreen = Get.height;
    double widthScreen = Get.width;
    return Container(
        child: Column(
      children: [
        SizedBox(height: 10),
        SearchFilterWidget(),
        SizedBox(height: 10),
        Expanded(
          child: Container(
            width: widthScreen,
            // height: 200,
            child: ListView(
              children: [
                BookingBox(
                  date: "11 September 2020",
                  name: "dr. Zara Spk",
                  klinik: "Klinik Jaya Abadi",
                  schedule: "09.00 - 09.30",
                  countDays: "6 days to go",
                  statusFinish: 0,
                ),
                SizedBox(height: 10),
                BookingBox(
                  date: "11 September 2020",
                  name: "dr. Zara Spk",
                  klinik: "Klinik Jaya Abadi",
                  schedule: "09.00 - 09.30",
                  countDays: "6 days to go",
                  statusFinish: 1,
                ),
                SizedBox(height: 10),
                BookingBox(
                  date: "11 September 2020",
                  name: "dr. Zara Spk",
                  klinik: "Klinik Jaya Abadi",
                  schedule: "09.00 - 09.30",
                  countDays: "6 days to go",
                  statusFinish: 2,
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
