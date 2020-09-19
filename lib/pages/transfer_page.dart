import 'package:apps_kecantikan/pages/home_page.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatefulWidget {
  @override
  _TransferPageState createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Transfer'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context, 'Back');
            },
          ),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(
            horizontal: 32.0,
            vertical: 64.0,
          ),
          child: Card(
            elevation: 2.0,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 24.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/logobank.png',
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        Text(
                          'PT. Cantik Alami',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w800,
                          ),
                          overflow: TextOverflow.clip,
                        ),
                        SizedBox(
                          height: 24.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                'No. Rekening',
                                style: TextStyle(
                                  fontSize: 14.0,
                                ),
                                overflow: TextOverflow.clip,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  '021342123',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                  ),
                                  overflow: TextOverflow.clip,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                'Nominal',
                                style: TextStyle(
                                  fontSize: 14.0,
                                ),
                                overflow: TextOverflow.clip,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'Rp. 1.234.000,00',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                  ),
                                  overflow: TextOverflow.clip,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Pesanan akan kami konfirmasi maksimal 1x24 jam setelah transfer',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.clip,
                        ),
                        SizedBox(
                          height: 24.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                width: 70.0,
                                height: 34.0,
                                margin: EdgeInsets.all(8.0),
                                child: RaisedButton(
                                  child: Text(
                                    'Beranda',
                                    style: TextStyle(fontSize: 12.0),
                                  ),
                                  color: Colors.white,
                                  textColor: Color(0xFF0099FF),
                                  elevation: 3.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Homepage()),
                                    );
                                  },
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                width: 70.0,
                                height: 34.0,
                                margin: EdgeInsets.all(8.0),
                                child: RaisedButton(
                                  child: Text(
                                    'Konfirmasi',
                                    style: TextStyle(fontSize: 12.0),
                                  ),
                                  color: Color(0xFF0099FF),
                                  textColor: Colors.white,
                                  elevation: 3.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                  ),
                                  onPressed: () => print('konfirmasi'),
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
          ),
        ),
      ),
    );
  }
}
