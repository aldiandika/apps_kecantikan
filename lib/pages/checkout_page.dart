import 'package:apps_kecantikan/widgets/cart_product_widget.dart';
import 'package:apps_kecantikan/widgets/cart_telemedicine_widget.dart';
import 'package:apps_kecantikan/widgets/checkout_address_widget.dart';
import 'package:apps_kecantikan/widgets/checkout_payment_method_widget.dart';
import 'package:apps_kecantikan/widgets/checkout_product_widget.dart';
import 'package:apps_kecantikan/widgets/checkout_telemedicine_widget.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatefulWidget {
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Checkout'),
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
                      // Checkout Address
                      CheckoutAddress(),
                      // End of Checkout Address

                      SizedBox(
                        height: 24.0,
                      ),

                      // Checkout Telemedicine
                      CheckoutTelemedicine(),
                      // End of Checkout Telemedicine

                      SizedBox(
                        height: 24.0,
                      ),

                      // Checkout Product
                      CheckoutProduct(),
                      // End of Checkout Product

                      SizedBox(
                        height: 8.0,
                      ),

                      PaymentMethod(),
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
