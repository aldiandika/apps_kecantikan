import 'package:flutter/material.dart';

class CheckoutAddress extends StatefulWidget {
  @override
  _CheckoutAddressState createState() => _CheckoutAddressState();
}

class _CheckoutAddressState extends State<CheckoutAddress> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      width: MediaQuery.of(context).size.width,
      child: Card(
        elevation: 1.0,
        child: Container(
          margin: EdgeInsets.all(6.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Alamat Pengiriman',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w800,
                ),
              ),

              SizedBox(
                height: 8.0,
              ),

              Text(
                'Lia Adelia (+6289812723)',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 11.0,
                    fontWeight: FontWeight.w800,
                    color: Colors.grey
                ),
                overflow: TextOverflow.clip,
              ),

              Text(
                'Komplek Permakata Hijau Jl. Serumpun Bambu Blok 6A',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 11.0,
                    fontWeight: FontWeight.w800,
                    color: Colors.grey
                ),
                overflow: TextOverflow.clip,
              ),

              SizedBox(
                height: 4.0,
              ),

              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jawa Barat',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 11.0,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey
                          ),
                          overflow: TextOverflow.clip,
                        ),
                        Text(
                          'Bandung',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 11.0,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey
                          ),
                          overflow: TextOverflow.clip,
                        ),
                        Text(
                          '49878',
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
                        onPressed: () => print('Ubah alamat'),
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
