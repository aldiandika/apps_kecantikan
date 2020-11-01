import 'package:flutter/material.dart';

class InputData extends StatelessWidget {
  final String labelText;
  final double marginBottom;

  InputData({
    Key key,
    this.labelText = "",
    this.marginBottom = 10,
  }) : super(key: key);

  double heightFormInput = 40;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: marginBottom),
      child: Container(
        height: heightFormInput,
        child: TextField(
          decoration: InputDecoration(
            labelText: labelText,
            labelStyle: TextStyle(
              color: Color(0xFF986756),
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
      ),
    );
  }
}
