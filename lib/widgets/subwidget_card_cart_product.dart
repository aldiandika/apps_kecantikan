import 'package:flutter/material.dart';

class CardCartProduct extends StatefulWidget {
  @override
  _CardCartProductState createState() => _CardCartProductState();
}

class _CardCartProductState extends State<CardCartProduct> {
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
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w900,
                                    ),
                                    overflow: TextOverflow.clip,
                                  ),
                                  Text(
                                    'No. resep : KL-Ira-12-23-242124',
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12.0,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      IconButton(
                                        icon: Icon(
                                          Icons.remove_circle,
                                          color: Color(0xFF986756),
                                        ),
                                        onPressed: () => print('Kurang'),
                                      ),
                                      Text('2'),
                                      IconButton(
                                        icon: Icon(
                                          Icons.add_circle,
                                          color: Color(0xFF986756),
                                        ),
                                        onPressed: () => print('Tambah'),
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
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Rp 75.000,00',
                                    style: TextStyle(
                                      fontSize: 10.0,
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
                                      color: Color(0xFF986756),
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
                      color: Color(0xFFE6BCA8),
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
