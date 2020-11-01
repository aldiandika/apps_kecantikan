import 'package:flutter/material.dart';

class CardTreatmentProduct extends StatefulWidget {
  final String productName;
  final String productDuration;
  final String productDays;
  final String clinicName;
  final String clinicCity;
  final String productPrice;

  const CardTreatmentProduct(
      {Key key,
      this.productName = "[Product Name]",
      this.productDuration = "- Menit",
      this.productDays = "not available days",
      this.clinicName = "[Clinic Name]",
      this.clinicCity = "[Clinic City]",
      this.productPrice})
      : super(key: key);

  @override
  _CardTreatmentProductState createState() => _CardTreatmentProductState();
}

class _CardTreatmentProductState extends State<CardTreatmentProduct> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      child: Container(
        margin: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      widget.productName,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        widget.productName,
                        style: TextStyle(
                          color: Color(0xFF986756),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12.0,
            ),

            Text(
              widget.productDuration,
              style: TextStyle(
                fontSize: 13.0,
              ),
              overflow: TextOverflow.clip,
            ),
            Text(
              widget.productDays,
              style: TextStyle(
                fontSize: 13.0,
              ),
              overflow: TextOverflow.clip,
            ),

            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.clinicName,
                        style: TextStyle(
                          fontSize: 13.0,
                        ),
                        overflow: TextOverflow.clip,
                      ),
                      Text(
                        widget.clinicCity,
                        style: TextStyle(
                          fontSize: 13.0,
                        ),
                        overflow: TextOverflow.clip,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.centerRight,
                    constraints: BoxConstraints(
                      maxHeight: 30.0,
                    ),
                    child: RaisedButton(
                      child: Text(
                        'Booking',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      color: Color(0xFF986756),
                      textColor: Colors.white,
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0)),
                      ),
                      onPressed: () {
                        print('Booking');
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
