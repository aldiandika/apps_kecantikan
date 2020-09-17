import 'package:apps_kecantikan/widgets/subwidget_card_checkout_prod.dart';
import 'package:flutter/material.dart';

class CheckoutProduct extends StatefulWidget {
  @override
  _CheckoutProductState createState() => _CheckoutProductState();
}

class _CheckoutProductState extends State<CheckoutProduct> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 0.0),
          child: Text(
            'Product',
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

            itemCount: 2, // Number of Clinic
            itemBuilder: (context, index) => CardCheckoutProd(),
          ),
        ),
      ],
    );
  }
}
