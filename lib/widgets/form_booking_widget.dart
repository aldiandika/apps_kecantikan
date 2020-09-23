import 'package:flutter/material.dart';

class FormBooking extends StatelessWidget {
  final String text;
  final double height;

  const FormBooking({
    Key key,
    this.text = '',
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return Container(
      width: widthScreen,
      margin: EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 1,
            child: Container(
              width: widthScreen,
              height: heightScreen * 0.035,
              alignment: Alignment.centerLeft,
              child: Text(
                text,
                style: TextStyle(
                  color: Color(0xffB6AAAA),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              width: widthScreen,
              height: height, //heightScreen * 0.035,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Color(0xffB6AAAA),
                ),
                borderRadius: BorderRadius.circular(3),
              ),
              child: TextField(
                // onChanged: (text) {
                //   password = text;
                // },
                // controller: passwordController,
                cursorColor: Color(0xff659E8D),
                decoration: InputDecoration(
                  // hintText: "Cari Dokter",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
