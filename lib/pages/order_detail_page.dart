import 'package:apps_kecantikan/data/listproduct_dummy.dart';
import 'package:apps_kecantikan/pages/cart_page.dart';
import 'package:apps_kecantikan/pages/order_status_page.dart';
import 'package:apps_kecantikan/widgets/order_card_product_widget.dart';
import 'package:flutter/material.dart';

import 'recipe_dashboard_page.dart';

class OrderDetail extends StatefulWidget {
  @override
  _OrderDetailState createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Order Detail'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context, 'Back to Order History');
            },
          ),
        ),
        body: Container(
          color: Colors.black12,
          padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: widthScreen,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  'Tanggal Pembelian',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    '13 Oktober 2020',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'No. Invoice : KC/OR/090-129',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text(
                                  'No. Resep : KC/ZA/090-129',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  child: ConstrainedBox(
                                    constraints:
                                        BoxConstraints(maxHeight: 20.0),
                                    child: FlatButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => RecipePage()),
                                        );
                                      },
                                      child: Text(
                                        'lihat',
                                        style: TextStyle(
                                          color: Color(0xFF0099FF),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: widthScreen,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 4,
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
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Dikirim',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'SiCepat : sc201031203',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: ConstrainedBox(
                                constraints: BoxConstraints(maxHeight: 20.0),
                                child: FlatButton(
                                  onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => OrderStatusPage()),
                                    );
                                  },
                                  child: Text(
                                    'lihat',
                                    style: TextStyle(
                                      color: Color(0xFF0099FF),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
                  child: Text(
                    'Product',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(minHeight: 56.0),
                  child: ListView.builder(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,

                    itemCount: ProductListDummy
                        .productDummy.length, // Number of Product
                    itemBuilder: (context, index) => CardOrderProduct(
                      productName: ProductListDummy.productDummy[index]
                          ["productName"],
                      productImage: ProductListDummy.productDummy[index]
                          ["productImage"],
                      productPrice: ProductListDummy.productDummy[index]
                          ["productPrice"],
                      productQty: ProductListDummy.productDummy[index]
                          ["productQty"],
                      productSize: ProductListDummy.productDummy[index]
                          ["productSize"],
                      withRecipe: ProductListDummy.productDummy[index]
                          ["withRecipe"],
                      productTotalPrice: ProductListDummy.productDummy[index]
                          ["productTotalPrice"],
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
                  child: Text(
                    'Alamat Pengiriman',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  width: widthScreen,
                  child: Card(
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
                              'Kelana Azhari',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '082100892321',
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Jl. Kenari No, 12 Kec. Sidarja, Kota Sragen',
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Sragen, Jawa Timur, 49012',
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 16.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
                  child: Text(
                    'Infromasi Pembayaran',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  width: widthScreen,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  'Metode Pembayaran',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    'BR Virtual Account',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Divider(
                            color: Colors.blueGrey,
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  'Total Harga ',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    'Rp 750.000,00',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  'Total Ongkos Kirim',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    'Rp 11.000,00',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Divider(
                            color: Colors.blueGrey,
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  'Total',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    'Rp 766.000,00',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 16.0,
                ),
                Container(
                  alignment: Alignment.center,
                  width: widthScreen,
                  child: SizedBox(
                    width: double.infinity,
                    height: 42.0,
                    child: RaisedButton(
                      child: Text(
                        'Review',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      color: Colors.white,
                      textColor: Color(0xFF0099FF),
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0)),
                      ),
                      onPressed: () {
                        print('Review');
                      },
                    ),
                  ),
                ),

                SizedBox(
                  height: 16.0,
                ),
                Container(
                  alignment: Alignment.center,
                  width: widthScreen,
                  child: SizedBox(
                    width: double.infinity,
                    height: 42.0,
                    child: RaisedButton(
                      child: Text(
                        'Beli lagi',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      color: Color(0xFF0099FF),
                      textColor: Colors.white,
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0)),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CartPage()),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
