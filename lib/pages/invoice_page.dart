import 'package:flutter/material.dart';

class InvoicePage extends StatelessWidget {
  double fontTableTitle = 12;
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
            Container(
              width: widthScreen,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: widthScreen * 0.3,
                    child: Text(
                      "Nama Produk",
                      style: TextStyle(
                        fontSize: fontTableTitle,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: widthScreen * 0.15,
                    child: Text(
                      "Jumlah",
                      style: TextStyle(
                        fontSize: fontTableTitle,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: widthScreen * 0.125,
                    child: Text(
                      "Berat",
                      style: TextStyle(
                        fontSize: fontTableTitle,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: widthScreen * 0.2,
                    child: Text(
                      "Harga Barang",
                      style: TextStyle(
                        fontSize: fontTableTitle,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Subtotal",
                      style: TextStyle(
                        fontSize: fontTableTitle,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Divider(thickness: 2),
            Container(
              width: widthScreen,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: widthScreen * 0.3,
                    child: Text(
                      "Night Cream",
                      style: TextStyle(
                        fontSize: fontTableTitle,
                      ),
                    ),
                  ),
                  Container(
                    width: widthScreen * 0.15,
                    child: Text(
                      "5",
                      style: TextStyle(
                        fontSize: fontTableTitle,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: widthScreen * 0.125,
                    child: Text(
                      "500 gr",
                      style: TextStyle(
                        fontSize: fontTableTitle,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: widthScreen * 0.2,
                    child: Text(
                      "Rp 135.000",
                      style: TextStyle(
                        fontSize: fontTableTitle,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Rp 375.000",
                      style: TextStyle(
                        fontSize: fontTableTitle,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 100),
            Divider(thickness: 2),
            Container(
              width: widthScreen,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      "",
                      style: TextStyle(
                        fontSize: fontTableTitle,
                      ),
                    ),
                  ),
                  Container(
                    width: widthScreen * 0.475,
                    child: Text(
                      "Subtotal Harga Barang",
                      style: TextStyle(
                        fontSize: fontTableTitle,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Rp 375.000",
                      style: TextStyle(
                        fontSize: fontTableTitle,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
            ),
            Divider(thickness: 2),
            Container(
              width: widthScreen,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      "",
                      style: TextStyle(
                        fontSize: fontTableTitle,
                      ),
                    ),
                  ),
                  Container(
                    width: widthScreen * 0.65,
                    child: Divider(thickness: 2),
                  ),
                ],
              ),
            ),
            Container(
              width: widthScreen,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      "",
                      style: TextStyle(
                        fontSize: fontTableTitle,
                      ),
                    ),
                  ),
                  Container(
                    width: widthScreen * 0.475,
                    child: Text(
                      "SiCepat (Berat 500 gr)",
                      style: TextStyle(
                        fontSize: fontTableTitle,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Rp 15.000",
                      style: TextStyle(
                        fontSize: fontTableTitle,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: widthScreen,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      "",
                      style: TextStyle(
                        fontSize: fontTableTitle,
                      ),
                    ),
                  ),
                  Container(
                    width: widthScreen * 0.65,
                    child: Divider(thickness: 2),
                  ),
                ],
              ),
            ),
            Container(
              width: widthScreen,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      "",
                      style: TextStyle(
                        fontSize: fontTableTitle,
                      ),
                    ),
                  ),
                  Container(
                    width: widthScreen * 0.475,
                    child: Text(
                      "Subtotal Ongkos Kirim",
                      style: TextStyle(
                        fontSize: fontTableTitle,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Rp 15.000",
                      style: TextStyle(
                        fontSize: fontTableTitle,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: widthScreen,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      "",
                      style: TextStyle(
                        fontSize: fontTableTitle,
                      ),
                    ),
                  ),
                  Container(
                    width: widthScreen * 0.65,
                    child: Divider(thickness: 2),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: widthScreen,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      "",
                      style: TextStyle(
                        fontSize: fontTableTitle,
                      ),
                    ),
                  ),
                  Container(
                    width: widthScreen * 0.65,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.black,
                      width: 2,
                    )),
                    child: Row(
                      children: [
                        Text(
                          "Total Bayar",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Rp 390.000",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
