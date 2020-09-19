import 'package:apps_kecantikan/pages/checkout_page.dart';
import 'package:apps_kecantikan/widgets/cart_product_widget.dart';
import 'package:apps_kecantikan/widgets/cart_telemedicine_widget.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cart Summary'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context, 'Back to Home');
            },
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 12.0,
                  ),
                  child: Column(
                    children: [
                      // Cart Telemedicine
                      CartTelemedicine(),
                      // End of Cart Telemedicine
                      SizedBox(
                        height: 24.0,
                      ),
                      CartProduct(),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Card(
                elevation: 10.0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Total: Rp 270.000,00',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.clip,
                      ),
                      Container(
                        width: 100.0,
                        height: 26.0,
                        child: RaisedButton(
                          child: Text(
                            'Checkout',
                            style: TextStyle(fontSize: 12.0),
                          ),
                          color: Color(0xFF0099FF),
                          textColor: Colors.white,
                          elevation: 3.0,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CheckoutPage()),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
