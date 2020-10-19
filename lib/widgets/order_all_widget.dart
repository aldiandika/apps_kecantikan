import 'package:flutter/material.dart';

import 'order_box_widget.dart';

class OrderAllWidget extends StatefulWidget {
  @override
  _OrderAllWidgetState createState() => _OrderAllWidgetState();
}

class _OrderAllWidgetState extends State<OrderAllWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.0,),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          OrderBox(
            date: "11 September 2020",
            status: 1,
            invoiceNumber: "KC/OR/001-02120",
            storeName: "Klinik Jaya Abadi",
            bill: 'Rp 255.000,00',
            withRecipe: true,
          ),
          SizedBox(height: 10),
          OrderBox(
            date: "11 September 2020",
            status: 2,
            invoiceNumber: "KC/OR/002-02120",
            storeName: "Klinik Jaya Abadi",
            bill: 'Rp 255.000,00',
          ),
          SizedBox(height: 10),
          OrderBox(
            date: "11 September 2020",
            status: 3,
            invoiceNumber: "KC/OR/003-02120",
            storeName: "Klinik Jaya Abadi",
            bill: 'Rp 255.000,00',
          ),
          SizedBox(height: 10),
          OrderBox(
            date: "11 September 2020",
            status: 4,
            invoiceNumber: "KC/OR/004-02120",
            storeName: "Klinik Jaya Abadi",
            bill: 'Rp 255.000,00',
          ),

        ],
      ),
    );
  }
}
