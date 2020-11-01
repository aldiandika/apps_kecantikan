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
          backgroundColor: Color(0xFF986756),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context, 'Back to Home');
            },
          ),
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Color(0xFFEBEBEB),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            cursorColor: Color(0xff659E8D),
                            decoration: InputDecoration(
                                hintText: "Cari Produk",
                                border: InputBorder.none,
                                suffixIcon: IconButton(
                                    icon: Icon(Icons.search),
                                    onPressed: () {})),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(
                          icon: Image.asset(
                            "assets/icons/filter.png",
                            color: Color(0xFF888888),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
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
                    padding:
                        EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
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
