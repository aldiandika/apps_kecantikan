import 'package:flutter/material.dart';

class FormBooking extends StatelessWidget {
  final String text;
  final double height;
  final bool isMultiLines;
  final int numberOfLines;

  const FormBooking({
    Key key,
    this.text = '',
    this.height,
    this.isMultiLines = false,
    this.numberOfLines = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return Container(
      width: widthScreen,
      height: height,
      margin: EdgeInsets.all(5.0),
      child: TextField(
        keyboardType: isMultiLines ? TextInputType.multiline : TextInputType.text,
        maxLines: numberOfLines,
        decoration: InputDecoration(
          labelText: text,
          labelStyle: TextStyle(
            color: Color(0xFF986756),
            fontSize: 12.0,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(
              color: Color(0xFF986756),
              width: 1.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(
              color: Color(0xFF986756),
              width: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}


