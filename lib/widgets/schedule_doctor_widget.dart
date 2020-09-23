import 'package:flutter/material.dart';

class ScheduleDoctor extends StatelessWidget {
  final String hari;
  final String jam;

  const ScheduleDoctor({
    Key key,
    this.hari = "",
    this.jam = "",
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
              child: Text(
                hari,
                style: TextStyle(
                  color: Color(0xffB6AAAA),
                  fontSize: 14,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              width: widthScreen,
              child: Text(
                jam,
                style: TextStyle(
                  color: Color(0xffB6AAAA),
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
