import 'package:apps_kecantikan/widgets/order_all_widget.dart';
import 'package:apps_kecantikan/widgets/order_cancel_widget.dart';
import 'package:apps_kecantikan/widgets/order_done_widget.dart';
import 'package:apps_kecantikan/widgets/order_sent_widget.dart';
import 'package:apps_kecantikan/widgets/order_unpaid_widget.dart';
import 'package:apps_kecantikan/widgets/search_filter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderHistoryPage extends StatefulWidget {
  @override
  _OrderHistoryPageState createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  int index = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    index = 0;
  }

  void changeIndex(int _index) {
    setState(() {
      index = _index;
    });
    print('Tab : $_index');
  }

  @override
  Widget build(BuildContext context) {
    double heightScreen = Get.height;
    double widthScreen = Get.width;

    final childWidget = <Widget>[
      OrderAllWidget(),
      OrderUnpaidWidget(),
      OrderDoneWidget(),
      OrderSentWidget(),
      OrderCancelWidget(),
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Order History'),
          backgroundColor: Color(0xFF986756),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context, 'Back to Profile');
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
          height: heightScreen,
          width: widthScreen,
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              SearchFilterWidget(),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 8.0,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 30,
                        decoration: BoxDecoration(
                          color: index == 0 ? Color(0xFFE6BCA8) : Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: MaterialButton(
                          child: Text(
                            "Semua",
                            style: TextStyle(
                              color: index == 0 ? Colors.white : Color(0xFF986756),
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          onPressed: () {
                            changeIndex(0);
                          },
                        ),
                      ),
                      Container(
                        height: 30,
                        decoration: BoxDecoration(
                          color: index == 1 ? Color(0xFFE6BCA8) : Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: MaterialButton(
                          child: Text(
                            "Belum dibayar",
                            style: TextStyle(
                              color: index == 1 ? Colors.white : Color(0xFF986756),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            changeIndex(1);
                          },
                        ),
                      ),
                      Container(
                        height: 30,
                        decoration: BoxDecoration(
                          color: index == 2 ? Color(0xFFE6BCA8) : Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: MaterialButton(
                          child: Text(
                            "Selesai",
                            style: TextStyle(
                              color: index == 2 ? Colors.white : Color(0xFF986756),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            changeIndex(2);
                          },
                        ),
                      ),
                      Container(
                        height: 30,
                        decoration: BoxDecoration(
                          color: index == 3 ? Color(0xFFE6BCA8) : Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: MaterialButton(
                          child: Text(
                            "Dikirim",
                            style: TextStyle(
                              color: index == 3 ? Colors.white : Color(0xFF986756),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            changeIndex(3);
                          },
                        ),
                      ),
                      Container(
                        height: 30,
                        decoration: BoxDecoration(
                          color: index == 4 ? Color(0xFFE6BCA8) : Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: MaterialButton(
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                              color: index == 4 ? Colors.white : Color(0xFF986756),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            changeIndex(4);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: (childWidget.length > index)
                    ? Expanded(
                        child: childWidget[index],
                      )
                    : Expanded(
                      child: Container(
                          child: Center(
                            child: Text('Nothing to show'),
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
