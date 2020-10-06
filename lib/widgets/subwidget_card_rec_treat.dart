import 'package:flutter/material.dart';

class CardRecTreat extends StatefulWidget {
  @override
  _CardRecTreatState createState() => _CardRecTreatState();
}

class _CardRecTreatState extends State<CardRecTreat> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.0,
      margin: EdgeInsets.symmetric(
        vertical: 6.0,
        horizontal: 6.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(28.0),
          bottomRight: Radius.circular(28.0),
        ),
      ),
      color: Color(0xFFFFEBE5),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(28.0),),
            child: Image.asset(
              'assets/images/facial.jpg',
              fit: BoxFit.cover,
            ),
          ),

          Container(
            margin: EdgeInsets.symmetric(vertical: 6.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(2.0),
                  child: Text(
                    'Peeling Scrub',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(2.0),
                  child: Text(
                    'Rp 130.000,00 - Rp 250.000,00',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 9.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFF7583),
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(2.0),
                  child: Text(
                    'Klinik Jaya Sentosa Bandung',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 9.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45,
                    ),
                    overflow: TextOverflow.clip,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
