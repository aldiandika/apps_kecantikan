import 'package:apps_kecantikan/widgets/subwidget_card_cart_telemedicine.dart';
import 'package:flutter/material.dart';

class CartTelemedicine extends StatefulWidget {
  @override
  _CartTelemedicineState createState() => _CartTelemedicineState();
}

class _CartTelemedicineState extends State<CartTelemedicine> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 0.0),
          child: Text(
            'Telemedicine',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(minHeight: 56.0),
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,

            itemCount: 1, // Number of Clinic
            itemBuilder: (context, index) => CardCartTele(),
          ),
        ),
      ],
    );
  }
}
