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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/dermatologist.jpg',
          ),
          Container(
            padding: EdgeInsets.all(2.0),
            margin: EdgeInsets.all(4.0),
            child: Text(
              'dr. Meilance. Sp. Derm',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 8.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            padding: EdgeInsets.all(2.0),
            margin: EdgeInsets.all(4.0),
            child: Text(
              'Klinik Jaya Sentosa Bandung',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 8.0,
                fontWeight: FontWeight.bold,
                color: Colors.black45,
              ),
              overflow: TextOverflow.clip,
            ),
          ),
        ],
      ),
    );
  }
}
