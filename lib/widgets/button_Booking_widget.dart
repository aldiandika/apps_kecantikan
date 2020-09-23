import 'package:flutter/material.dart';

class ButtonBooking extends StatelessWidget {
  final String text;
  final Color txtColor;
  final Color bgnColor;
  final Function onPressed;

  const ButtonBooking({
    Key key,
    this.text = "",
    this.txtColor = Colors.black,
    this.bgnColor = Colors.white,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      height: 25,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(2.0, 2.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
        color: bgnColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
          child: Text(
            text,
            style: TextStyle(color: txtColor),
          ),
          onPressed: onPressed),
    );
  }
}