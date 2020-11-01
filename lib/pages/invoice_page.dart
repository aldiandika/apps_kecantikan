import 'package:flutter/material.dart';

class InvoicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Invoice"),
        centerTitle: true,
        backgroundColor: Color(0xFF986756),
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
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: 25,
          horizontal: 10,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: widthScreen * 0.6,
                  child: RichText(
                    text: TextSpan(
                      text: 'No. invoice : ',
                      style: TextStyle(color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'KC/OR/001-02120',
                            style: TextStyle(color: Color(0xff986756))),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Text("Tujuan Pengiriman"),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  width: widthScreen * 0.6,
                  child: Text("Diterbitkan atas nama"),
                ),
                Expanded(
                  child: Text("Sarah Novita Sari"),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  width: widthScreen * 0.6,
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 60,
                                child: Text("Penjual"),
                              ),
                              Text("Klinik Jaya Abadi"),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Container(
                                width: 60,
                                child: Text("Tanggal"),
                              ),
                              Text("30 September 2020"),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Text("Jalan Saat No 50 Bandung, 40231 Jawa Barat"),
                ),
              ],
            ),
            SizedBox(height: 25),
            Divider(thickness: 2),
            Row(
              children: [
                Flexible(flex: 5,child: Text("Nama Produk")),
                Flexible(child: Text("Jumlah")),
                Flexible(child: Text("Berat")),
                Flexible(child: Text("Harga Barang")),
                Flexible(child: Text("Subtotal")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
