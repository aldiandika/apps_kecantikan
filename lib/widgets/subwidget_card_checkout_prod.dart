import 'package:flutter/material.dart';

class CardCheckoutProd extends StatefulWidget {
  @override
  _CardCheckoutProdState createState() => _CardCheckoutProdState();
}

class _CardCheckoutProdState extends State<CardCheckoutProd> {
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
                alignment: Alignment.centerLeft,
                child: Text(
                  'Klinik Perubahan Usia',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(4.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: 0.0,
                  ),
                  child: ListView.separated(
                    itemCount: 2, // Number of product
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
                            flex: 1,
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                minHeight: 50.0,
                              ),
                              child: Container(
                                margin: EdgeInsets.only(
                                  right: 4.0,
                                ),
                                color: Colors.redAccent,
                                child: Image.asset(
                                  'assets/images/product.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: ConstrainedBox(
                              constraints: BoxConstraints(minHeight: 50.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Anti Aging Cream',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w900,
                                    ),
                                    overflow: TextOverflow.clip,
                                  ),
                                  Text(
                                    'No. resep : KL-Ira-12-23-242124',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.grey,
                                    ),
                                    overflow: TextOverflow.clip,
                                  ),
                                  SizedBox(
                                    height: 12.0,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '2 pcs',
                                        style: TextStyle(
                                          fontSize: 11.0,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: ConstrainedBox(
                              constraints: BoxConstraints(minHeight: 50.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Rp 75.000,00',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black,
                                    ),
                                    overflow: TextOverflow.clip,
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
              Container(
                margin: EdgeInsets.all(6.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Opsi Pengiriman',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFFE6BCA8),
                      ),
                    ),

                    SizedBox(
                      height: 8.0,
                    ),

                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Text(
                              'JNE - reguler',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 11.0,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.grey
                              ),
                              overflow: TextOverflow.clip,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Rp 14.000,00',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 11.0,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.grey
                              ),
                              overflow: TextOverflow.clip,
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 8.0,
                    ),

                    Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Text(
                            'Sampai di 17-19 September 2020 ',
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
                              color: Color(0xFF986756),
                              textColor: Colors.white,
                              elevation: 3.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(8.0)),
                              ),
                              onPressed: () => print('Ubah kurir'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
