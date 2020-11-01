import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../data/dermatology_dummy.dart';
import 'button_Booking_widget.dart';

class ListDoctorTelemedecine extends StatelessWidget {
  double heightScreen = Get.height;
  double widthScreen = Get.width;

  final int index;

  ListDoctorTelemedecine({
    Key key,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthScreen,
      height: 100,
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        // color: Colors.blue,
        border: Border.all(color: Color(0xFFD6D6D6), width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.asset(
            DeramtologyDummy.dummy[index]["photo"],
            width: 60,
            height: 60,
            fit: BoxFit.fitHeight,
          ),
          SizedBox(
            width: 25,
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    DeramtologyDummy.dummy[index]["name"],
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    DeramtologyDummy.dummy[index]["klinik"],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    DeramtologyDummy.dummy[index]["alamat"],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    DeramtologyDummy.dummy[index]["tahun"],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    DeramtologyDummy.dummy[index]["harga"],
                    style: TextStyle(
                      color: Color(0xFF986756),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
              // alignment: Alignment.bottomCenter,
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ButtonBooking(
                text: "Booking",
                txtColor: Colors.white,
                bgnColor: Color(0xFF986756),
                onPressed: () {
                  Get.toNamed('/TelemedicineDoctorDetails');
                },
              ),
            ],
          ))
        ],
      ),
    );
  }
}
