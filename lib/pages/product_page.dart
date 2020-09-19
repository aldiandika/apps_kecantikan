import 'package:apps_kecantikan/widgets/product_card_widget.dart';
import 'package:apps_kecantikan/widgets/subwidget_card_rec_treat.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List<int> generateNumbers() => List<int>.generate(25, (i) => i + 1);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Products'),
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
              flex: 1,
              child: Container(
                color: Colors.blue,
              ),
            ),
            Expanded(
              flex: 9,
              child: SingleChildScrollView(
                child: Container(
                  child: GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    childAspectRatio: (3 / 4),
                    padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                    children: generateNumbers().map((int i) {
                      return CardProduct();
                    }).toList(),
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
