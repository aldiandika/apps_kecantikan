import 'package:flutter/material.dart';

import 'order_box_widget.dart';

class OrderCancelWidget extends StatefulWidget {
  @override
  _OrderCancelWidgetState createState() => _OrderCancelWidgetState();
}

class _OrderCancelWidgetState extends State<OrderCancelWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.0,),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          OrderBox(
            date: "11 September 2020",
            status: 2,
            invoiceNumber: "KC/OR/003-02120",
            storeName: "Klinik Jaya Abadi",
            bill: 'Rp 255.000,00',
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
