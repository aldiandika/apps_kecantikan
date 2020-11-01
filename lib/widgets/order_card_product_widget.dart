import 'package:flutter/material.dart';

class CardOrderProduct extends StatefulWidget {
  final String productName;
  final String productImage;
  final String productSize;
  final String productQty;
  final String productPrice;
  final String productTotalPrice;
  final bool withRecipe;

  const CardOrderProduct(
      {Key key,
      this.productName = "",
      this.productImage = 'assets/images/produk_cream.jpg',
      this.productSize = "",
      this.productQty = "",
      this.productPrice = "",
      this.productTotalPrice = "",
      this.withRecipe = false})
      : super(key: key);

  @override
  _CardOrderProductState createState() => _CardOrderProductState();
}

class _CardOrderProductState extends State<CardOrderProduct> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      child: Container(
        margin: EdgeInsets.all(12.0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Status',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
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
                        widget.productImage,
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
                            widget.productName,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 11.0,
                            ),
                          ),
                          Text(
                            widget.productSize,
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w300,
                              fontSize: 10.0,
                            ),
                          ),
                          widget.withRecipe ? Text(
                            'Dengan resep dokter',
                            style: TextStyle(
                              color: Color(0xFF986756),
                              fontWeight: FontWeight.w300,
                              fontSize: 10.0,
                            ),
                          ) : Container(),
                          SizedBox(
                            height: 12.0,
                          ),
                          Text(
                            widget.productQty,
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
                        widget.productPrice,
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
            Divider(
              color: Colors.black45,
            ),
            SizedBox(
              height: 8.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    child: Text(
                      widget.productTotalPrice,
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.clip,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.centerRight,
                    constraints: BoxConstraints(
                      maxHeight: 30.0,
                    ),
                    child: RaisedButton(
                      child: Text(
                        'Beli lagi',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      color: Color(0xFF986756),
                      textColor: Colors.white,
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0)),
                      ),
                      onPressed: () {
                        print('Beli lagi');
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
