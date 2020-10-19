import 'package:flutter/material.dart';

import 'order_box_widget.dart';

class OrderUnpaidWidget extends StatefulWidget {
  @override
  _OrderUnpaidWidgetState createState() => _OrderUnpaidWidgetState();
}

class _OrderUnpaidWidgetState extends State<OrderUnpaidWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.0,),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          OrderBox(
            date: "11 September 2020",
            status: 4,
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
