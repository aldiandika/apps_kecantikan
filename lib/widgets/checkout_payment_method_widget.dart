import 'package:flutter/material.dart';

class PaymentMethod extends StatefulWidget {
  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      width: MediaQuery.of(context).size.width,
      child: Card(
        elevation: 1.0,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal : 12.0, vertical: 6.0,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Metode Pembayaran',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),

              SizedBox(
                height: 8.0,
              ),

              Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Text(
                      'Transfer BNI',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 11.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.grey
                      ),
                      overflow: TextOverflow.clip,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: 70.0,
                      height: 26.0,
                      child: RaisedButton(
                        child: Text(
                          'Ubah',
                          style: TextStyle(fontSize: 12.0),
                        ),
                        color: Color(0xFF0099FF),
                        textColor: Colors.white,
                        elevation: 3.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(8.0)),
                        ),
                        onPressed: () => print('Ubah metode bayar'),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
