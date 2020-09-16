import 'package:flutter/material.dart';

class CardCartTele extends StatefulWidget {
  @override
  _CardCartTeleState createState() => _CardCartTeleState();
}

class _CardCartTeleState extends State<CardCartTele> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 4.0),
      child: Card(
        elevation: 1.0,
        child: Container(
          margin: EdgeInsets.all(6.0),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(4.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: 0.0,
                  ),
                  child: ListView.separated(
                    itemCount: 1, // Number of doctor appoinment
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, index) => Divider(
                      color: Colors.grey,
                    ),
                    itemBuilder: (context, item) => Container(
                      margin: EdgeInsets.only(
                        bottom: 6.0,
                        top: 6.0,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 6,
                            child: ConstrainedBox(
                              constraints: BoxConstraints(minHeight: 100.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'dr. Zara, Spk.',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w900,
                                    ),
                                    overflow: TextOverflow.clip,
                                  ),
                                  SizedBox(
                                    height: 24.0,
                                  ),
                                  Text(
                                    'Klinik Jaya Abadi',
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    '11 September 2020',
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    '09.00 - 09.30',
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: ConstrainedBox(
                              constraints: BoxConstraints(minHeight: 100.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Rp 75.000,00',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Container(
                                    width: 70.0,
                                    height: 26.0,
                                    child: RaisedButton(
                                      child: Text(
                                        'Hapus',
                                        style: TextStyle(fontSize: 12.0),
                                      ),
                                      color: Color(0xFFFF7583),
                                      textColor: Colors.white,
                                      elevation: 3.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0)),
                                      ),
                                      onPressed: () => print('hapus produk'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 20.0),
                child: FlatButton(
                  onPressed: () => print('Detail'),
                  child: Text(
                    'Details',
                    style: TextStyle(
                      color: Color(0xFF0099FF),
                    ),
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
