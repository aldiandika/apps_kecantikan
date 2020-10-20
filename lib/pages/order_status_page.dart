import 'package:apps_kecantikan/widgets/order_status_track_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class OrderStatusPage extends StatefulWidget {
  @override
  _OrderStatusPageState createState() => _OrderStatusPageState();
}

class _OrderStatusPageState extends State<OrderStatusPage> {

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Order Status'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context, 'Back to Order Detail');
            },
          ),
        ),
        body: Container(
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
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'SiCepat',
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
                                'No. Resi : sc201031203',
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
                                  constraints: BoxConstraints(maxHeight: 20.0),
                                  child: FlatButton(
                                    onPressed: () => print('salin'),
                                    child: Text(
                                      'salin',
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
              SizedBox(
                height: 16.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
                child: Text(
                  'Detail Pengiriman',
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
                height: MediaQuery.of(context).size.height * 0.6,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.all(12.0),
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        TimelineTile(
                          alignment: TimelineAlign.manual,
                          lineXY: 0.1,
                          isFirst: true,
                          indicatorStyle: const IndicatorStyle(
                            width: 15,
                            color: Color(0xFF0099FF),
                          ),
                          beforeLineStyle: const LineStyle(
                            color: Colors.black26,
                          ),
                          endChild: TrackItemWidget(
                            headTitle: 'Senin - 14 Oktober 2020  09:13',
                            subTitle: 'Paket sudah masuk Gateway Suropati',
                            statusNow: true,
                          ),
                        ),
                        TimelineTile(
                          alignment: TimelineAlign.manual,
                          lineXY: 0.1,
                          isFirst: false,
                          indicatorStyle: const IndicatorStyle(
                            width: 15,
                            color: Colors.blueGrey,
                          ),
                          beforeLineStyle: const LineStyle(
                            color: Colors.black26,
                          ),
                          endChild: TrackItemWidget(
                            headTitle: 'Senin - 13 Oktober 2020  20:45',
                            subTitle: 'Paket sudah masuk Gateway Jakarta',
                            statusNow: false,
                          ),
                        ),
                        TimelineTile(
                          alignment: TimelineAlign.manual,
                          lineXY: 0.1,
                          isLast: true,
                          indicatorStyle: const IndicatorStyle(
                            width: 15,
                            color: Colors.blueGrey,
                          ),
                          beforeLineStyle: const LineStyle(
                            color: Colors.black26,
                          ),
                          endChild: TrackItemWidget(
                            headTitle: 'Senin - 13 Oktober 2020  17:42',
                            subTitle: 'Paket diterima sicepat Jakarta',
                            statusNow: false,
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
      ),
    );
  }
}
