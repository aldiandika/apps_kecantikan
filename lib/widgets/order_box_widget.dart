import 'package:apps_kecantikan/pages/order_detail_page.dart';
import 'package:flutter/material.dart';

import 'button_Booking_widget.dart';

class OrderBox extends StatefulWidget {
  final String date;
  final String invoiceNumber;
  final bool withRecipe;
  final String storeName;
  final List<Map<String, dynamic>> productInfo;
  final int status;
  final String bill;

  const OrderBox(
      {Key key,
        this.date = "",
        this.invoiceNumber = "",
        this.withRecipe = false,
        this.storeName = "",
        this.productInfo,
        this.status = 0,
        this.bill})
      : super(key: key);

  @override
  _OrderBoxState createState() => _OrderBoxState();
}

class _OrderBoxState extends State<OrderBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Color(0xffD6D6D6),
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 7,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.date,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'No. invoice : ${widget.invoiceNumber}',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.topRight,
                          child: widget.status == 1
                              ? ButtonBooking(
                            text: "Done",
                            fontSize: 10,
                            txtColor: Colors.white,
                            bgnColor: Color(0xFF986756),
                          )
                              : widget.status == 2
                              ? ButtonBooking(
                            text: "Cancel",
                            fontSize: 10,
                            txtColor: Colors.white,
                            bgnColor: Colors.red,
                          )
                              : widget.status == 3
                              ? ButtonBooking(
                            text: "Dikirim",
                            fontSize: 10,
                            txtColor: Color(0xFF986756),
                            bgnColor: Colors.white,
                          )
                              : widget.status == 4
                              ? Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Menunggu pembayaran',
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Color(0xFFE6BCA8),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                              : Container(
                            child: Text(
                              'Menunggu pembayaran',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  widget.withRecipe ? Text(
                    'Dengan resep dokter',
                    style: TextStyle(
                      color: Color(0xFF986756),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ) : Container(),
                  SizedBox(height: 12),
                  Text(
                    widget.storeName,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 12),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          constraints: BoxConstraints(
                            maxHeight: 60,
                            maxWidth: 60,
                            minHeight: 60,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFF986756),
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                          ),
                          alignment: Alignment.center,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                            child: Image.asset(
                              'assets/images/produk_cream.jpg',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: Container(
                            padding: EdgeInsets.all(8.0),
                            constraints: BoxConstraints(
                              minHeight: 60,
                              minWidth: 60,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Night cream',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11.0,
                                  ),
                                ),
                                Text(
                                  'Tanpa resep',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 10.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 12.0,
                                ),
                                Text(
                                  '1 pc',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            alignment: Alignment.centerRight,
                            constraints: BoxConstraints(
                              minHeight: 60,
                              minWidth: 60,
                            ),
                            child: Text(
                              'Rp 75.000,00',
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w300,
                                fontSize: 10.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  Divider(
                    color: Colors.black45,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Text(
                              'Total',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: Text(
                              widget.bill,
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Color(0xffD6D6D6),
              ),
              borderRadius: BorderRadius.only(
                // topLeft: Radius.circular(10),
                // topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Material(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Colors.white,
              child: InkWell(
                splashColor: Colors.black26,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.03,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Details',
                    style: TextStyle(
                      color: Color(0xFFE6BCA8),
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OrderDetail()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
