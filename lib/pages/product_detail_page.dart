import 'package:apps_kecantikan/pages/cart_page.dart';
import 'package:apps_kecantikan/widgets/product_detail_review_item_widget.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Product Detail'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context, 'Back to Home');
            },
          ),
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () => print('Cart'),
                  child: Icon(
                    Icons.shopping_cart,
                    size: 26.0,
                  ),
                )),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  color: Colors.black12,
                  child: Column(
                    children: [
                      //Product Overview
                      Container(
                        width: MediaQuery.of(context).size.width,
                        color: Colors.white,
                        padding: EdgeInsets.all(4.0),
                        child: Column(
                          children: [
                            Container(
                              child: Image.asset(
                                'assets/images/product.jpg',
                                fit: BoxFit.cover,
                              ),
                              height: 300.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Facial Essence SK II ',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54,
                                    ),
                                    overflow: TextOverflow.clip,
                                  ),
                                  SizedBox(height: 12.0,),
                                  Text(
                                    'Rp 130.000,00',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54,
                                    ),
                                    overflow: TextOverflow.clip,
                                  ),
                                  SizedBox(height: 32.0,),
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          child: Row(
                                            children: [
                                              Icon(Icons.star_border, color: Color(0xFF25A0DE),),
                                              SizedBox(width: 1.0,),
                                              Text(
                                                '4.5',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(width: 1.0,),
                                              Text(
                                                '(17)',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                'Pembelian',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(width: 1.0,),
                                              Text(
                                                '(127)',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold
                                                ),
                                              ),
                                            ],
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
                      //End of Product Overview

                      SizedBox(
                        height: 12.0,
                      ),

                      //Klinik info
                      Container(
                        width: MediaQuery.of(context).size.width,
                        color: Colors.white,
                        padding: EdgeInsets.all(4.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    padding: EdgeInsets.all(4.0),
                                    child: CircleAvatar(maxRadius: 30.0,),
                                  ),
                                ),
                                Expanded(
                                  flex: 8,
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Klinik Cantik Mulus',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                          overflow: TextOverflow.clip,
                                        ),
                                        SizedBox(height: 6.0,),
                                        Text(
                                          'Kota Bandung',
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54,
                                          ),
                                          overflow: TextOverflow.clip,
                                        ),
                                        SizedBox(height: 8.0,),
                                        Container(
                                          child: Row(
                                            children: [
                                              Icon(Icons.star_border, color: Color(0xFF25A0DE),),
                                              SizedBox(width: 1.0,),
                                              Text(
                                                '4.5',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    width: 100.0,
                                    padding: EdgeInsets.all(8.0),
                                    child: RaisedButton(
                                      padding: EdgeInsets.all(2.0),
                                      child: Text(
                                        'Chat',
                                        style: TextStyle(fontSize: 12.0),
                                      ),
                                      color: Colors.white,
                                      textColor: Color(0xFF0099FF),
                                      elevation: 3.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(4.0)),
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    width: 100.0,
                                    padding: EdgeInsets.all(8.0),
                                    child: RaisedButton(
                                      padding: EdgeInsets.all(2.0),
                                      child: Text(
                                        'Follow',
                                        style: TextStyle(fontSize: 14.0),
                                      ),
                                      color: Color(0xFF0099FF),
                                      textColor: Colors.white,
                                      elevation: 3.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      //End of Klinik info

                      SizedBox(
                        height: 12.0,
                      ),

                      //Product Description
                      Container(
                        width: MediaQuery.of(context).size.width,
                        color: Colors.white,
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              child: Text(
                                'Deskripsi Produk',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              alignment: Alignment.centerLeft,
                            ),
                            Container(
                              child: Text(
                                'Dengan resep dokter',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                ),
                              ),
                              margin: EdgeInsets.symmetric(
                                vertical: 4.0,
                              ),
                              alignment: Alignment.centerLeft,
                            ),

                            SizedBox(
                              height: 24.0,
                            ),

                            //Section umum
                            Container(
                              margin: EdgeInsets.symmetric(
                                vertical: 4.0,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      child: Text(
                                        'Kategori : ',
                                        style: TextStyle(
                                          color: Colors.black54,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        'Whitening cream',
                                        style: TextStyle(
                                          color: Colors.black54,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                vertical: 4.0,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      child: Text(
                                        'Ukuran kemasan : ',
                                        style: TextStyle(
                                          color: Colors.black54,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        '250 ml',
                                        style: TextStyle(
                                          color: Colors.black54,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                vertical: 4.0,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      child: Text(
                                        'Stok : ',
                                        style: TextStyle(
                                          color: Colors.black54,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        '100',
                                        style: TextStyle(
                                          color: Colors.black54,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //End of Section umum

                            SizedBox(
                              height: 24.0,
                            ),

                            Divider(
                              color: Colors.blueGrey,
                            ),

                            //Section description
                            Container(
                              margin: EdgeInsets.symmetric(
                                vertical: 4.0,
                              ),
                              height: 150.0,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Komposisi : \n'
                                    'Alcohol\n'
                                    'Air\n'
                                    'Mineral\n'
                                    'Pemutih\n'
                                    '\n'
                                    '\n'
                                    'Baik digunakan malam sebelum tidur, dan pagi. '
                                    'Bersihkan wajah anda terlebih dulu sebelum menggunakan produk ini.'
                                    'Akan lebih maksimal jika digunakan rutin.'
                                    'Jika terdapat masalah penggunaan silakan hubungi dokter.',
                                style: TextStyle(
                                  color: Colors.black54,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            //End of Section description

                            SizedBox(
                              height: 12.0,
                            ),

                            Divider(
                              color: Colors.blueGrey,
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
                      //End of Product Description

                      SizedBox(
                        height: 12.0,
                      ),

                      //Review
                      Container(
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.all(10.0),
                              color: Colors.white54,
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Penilaian',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    overflow: TextOverflow.clip,
                                  ),
                                  SizedBox(
                                    height: 2.0,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star_border,
                                          color: Color(0xFF25A0DE),
                                          size: 20.0,
                                        ),
                                        SizedBox(
                                          width: 1.0,
                                        ),
                                        Text(
                                          '4.5 / 5.0 (17)',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11.0
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              child: ConstrainedBox(
                                constraints: BoxConstraints(minHeight: 56.0),
                                child: ListView.separated(
                                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) => Divider(
                                    color: Colors.blueGrey,
                                  ),
                                  itemCount: 1, // Number of Review
                                  itemBuilder: (context, index) => ProductReviewItem(),
                                ),
                              ),
                            ),
                            Container(
                              color: Colors.white54,
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.all(4.0),
                              child: ConstrainedBox(
                                constraints: BoxConstraints(maxHeight: 20.0),
                                child: FlatButton(
                                  onPressed: () => print('See All'),
                                  child: Text(
                                    'See all',
                                    style: TextStyle(
                                      color: Color(0xFF0099FF),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //End of Review

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
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 100.0,
                          padding: EdgeInsets.all(8.0),
                          child: RaisedButton(
                            child: Text(
                              'Beli langsung',
                              style: TextStyle(fontSize: 14.0),
                            ),
                            color: Colors.white,
                            textColor: Color(0xFF0099FF),
                            elevation: 3.0,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4.0)),
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
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 100.0,
                          padding: EdgeInsets.all(4.0),
                          child: RaisedButton(
                            child: Text(
                              'Keranjang',
                              style: TextStyle(fontSize: 14.0),
                            ),
                            color: Color(0xFF0099FF),
                            textColor: Colors.white,
                            elevation: 3.0,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                            ),
                            onPressed: () {},
                          ),
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
