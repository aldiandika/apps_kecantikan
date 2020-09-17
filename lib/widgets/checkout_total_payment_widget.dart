import 'package:flutter/material.dart';

class TotalPaymentWidget extends StatefulWidget {
  @override
  _TotalPaymentWidgetState createState() => _TotalPaymentWidgetState();
}

class _TotalPaymentWidgetState extends State<TotalPaymentWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      width: MediaQuery.of(context).size.width,
      child: Card(
        elevation: 1.0,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal : 12.0, vertical: 6.0,),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Pembayaran',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 8.0,),
                    Text(
                      'Rp 1.234.000,00',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 11.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.grey
                      ),
                      overflow: TextOverflow.clip,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: 70.0,
                  height: 36.0,
                  child: RaisedButton(
                    child: Text(
                      'Order',
                      style: TextStyle(fontSize: 12.0),
                    ),
                    color: Color(0xFF0099FF),
                    textColor: Colors.white,
                    elevation: 3.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(8.0)),
                    ),
                    onPressed: () => print('Order'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
