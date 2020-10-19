import 'package:apps_kecantikan/pages/chat_page.dart';
import 'package:apps_kecantikan/widgets/bottom_nav_widget.dart';
import 'package:apps_kecantikan/widgets/button_Booking_widget.dart';
import 'package:flutter/material.dart';

class BookingBox extends StatelessWidget {
  final String date;
  final String countDays;
  final String name;
  final String klinik;
  final String schedule;
  final int statusFinish;
  final String btnText;
  final Function onTap;

  const BookingBox({
    Key key,
    this.date = "",
    this.countDays = "",
    this.name = "",
    this.klinik = "",
    this.schedule = "",
    this.statusFinish = 0,
    this.btnText = "Details",
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return Container(
        child: Column(
      children: [
        Container(
          width: widthScreen,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Color(0xffD6D6D6),
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      date,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.topRight,
                        child: statusFinish == 1
                            ? ButtonBooking(
                                text: "Done",
                                fontSize: 10,
                                txtColor: Colors.white,
                                bgnColor: Colors.blue,
                              )
                            : statusFinish == 2
                                ? ButtonBooking(
                                    text: "Cancel",
                                    fontSize: 10,
                                    txtColor: Colors.white,
                                    bgnColor: Colors.red,
                                  )
                                : statusFinish == 3
                                    ? Text(
                                        "Starting Now",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    : statusFinish == 4
                                        ? Text(
                                            "Today",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        : statusFinish == 5
                                            ? ButtonBooking(
                                                text: "Telemed",
                                                fontSize: 10,
                                                txtColor: Colors.blue,
                                                bgnColor: Colors.white,
                                              )
                                            : Text(
                                                countDays,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color(0xffB6B6B6),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  klinik,
                  style: TextStyle(
                    color: Color(0xffB6AAAA),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      schedule,
                      style: TextStyle(
                        color: Color(0xffB6AAAA),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          statusFinish == 0 || statusFinish == 3
                              ? ButtonBooking(
                                  text: "Cancel",
                                  txtColor: Colors.blue,
                                  fontSize: 10,
                                  width: 70,
                                )
                              : Container(),
                          SizedBox(width: 10),
                          statusFinish == 0
                              ? ButtonBooking(
                                  text: "Reschedule",
                                  fontSize: 10,
                                  txtColor: Colors.white,
                                  bgnColor: Colors.blue,
                                )
                              : statusFinish == 3
                                  ? ButtonBooking(
                                      text: "Chat",
                                      fontSize: 10,
                                      txtColor: Colors.white,
                                      bgnColor: Colors.blue,
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => ChatPage()),
                                        );
                                      },
                                    )
                                  : Container(),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Color(0xffD6D6D6),
            ),
            borderRadius: BorderRadius.only(
              // topLeft: Radius.circular(10),
              // topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Material(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            color: Colors.white,
            child: InkWell(
              splashColor: Colors.blue,
              child: Container(
                height: heightScreen * 0.03,
                width: widthScreen,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Text(
                  btnText,
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              ),
              onTap: onTap,
            ),
          ),
        ),
      ],
    ));
  }
}
