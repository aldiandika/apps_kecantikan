import 'package:flutter/material.dart';

class VoucherInput extends StatefulWidget {
  @override
  _VoucherInputState createState() => _VoucherInputState();
}

class _VoucherInputState extends State<VoucherInput> {
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
                'Kode Voucher',
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
                    child: Container(
                      alignment: Alignment.centerLeft,
                      height: 30.0,
                      padding: EdgeInsets.only(right: 8.0,),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                              width: 1.0,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                              width: 1.0,
                            ),
                          ),
                        ),
                      ),
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
                        color: Color(0xFF986756),
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
