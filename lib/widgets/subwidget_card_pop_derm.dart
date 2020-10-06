import 'package:flutter/material.dart';

class CardRow extends StatefulWidget {
  @override
  _CardRowState createState() => _CardRowState();
}

class _CardRowState extends State<CardRow> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.0,
      margin: EdgeInsets.symmetric(
        vertical: 0.0,
        horizontal: 6.0,
      ),
      color: Color(0xFF986756),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(12.0),),
            child: Image.asset(
              'assets/images/dermatologist.jpg',
            ),
          ),
          Container(
            padding: EdgeInsets.all(2.0),
            margin: EdgeInsets.symmetric(horizontal:4.0, vertical: 4.0,),
            child: Text(
              'dr. Meilance. Sp. Derm',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 8.0,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            padding: EdgeInsets.all(2.0),
            margin: EdgeInsets.symmetric(horizontal:4.0,),
            child: Text(
              'Klinik Jaya Sentosa',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 8.0,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              overflow: TextOverflow.clip,
            ),
          ),
          Container(
            padding: EdgeInsets.all(2.0),
            margin: EdgeInsets.symmetric(horizontal:4.0,),
            child: Text(
              'Bandung',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 8.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              overflow: TextOverflow.clip,
            ),
          ),
        ],
      ),
    );
  }
}
