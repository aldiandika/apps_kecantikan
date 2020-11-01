import 'package:apps_kecantikan/data/care_dummy.dart';
import 'package:apps_kecantikan/data/klinik_dummy.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../data/dermatology_dummy.dart';
import 'button_Booking_widget.dart';

class ListCare extends StatelessWidget {
  double heightScreen = Get.height;
  double widthScreen = Get.width;

  final int index;

  ListCare({
    Key key,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthScreen,
      height: 200,
      // padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        // color: Colors.blue,
        border: Border.all(color: Color(0xFFD6D6D6), width: 2),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Container(
            width: 125,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    Care.dummy[index]["photo"],
                  )),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Care.dummy[index]["klinik"],
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    Care.dummy[index]["harga"],
                    style: TextStyle(
                      color: Color(0xFF986756),
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      child: Row(
                        children: [
                          Icon(
                            Icons.star_border,
                            color: Color(0xFF986756),
                            size: 20,
                          ),
                          Text(
                            "4.5 (100)",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
