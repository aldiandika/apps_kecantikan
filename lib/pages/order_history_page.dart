import 'package:apps_kecantikan/widgets/order_all_widget.dart';
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
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Order History'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context, 'Back to Profile');
            },
          ),
        ),
        body: Container(
          height: heightScreen,
          width: widthScreen,
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              SearchFilterWidget(
                defHintText: 'Cari',
              ),
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
                          color: index == 0 ? Colors.blue : Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: MaterialButton(
                          child: Text(
                            "Semua",
                            style: TextStyle(
                              color: index == 0 ? Colors.white : Colors.blue,
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
                          color: index == 1 ? Colors.blue : Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: MaterialButton(
                          child: Text(
                            "Belum dibayar",
                            style: TextStyle(
                              color: index == 1 ? Colors.white : Colors.blue,
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
                          color: index == 2 ? Colors.blue : Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: MaterialButton(
                          child: Text(
                            "Selesai",
                            style: TextStyle(
                              color: index == 2 ? Colors.white : Colors.blue,
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
                          color: index == 3 ? Colors.blue : Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: MaterialButton(
                          child: Text(
                            "Dikirim",
                            style: TextStyle(
                              color: index == 3 ? Colors.white : Colors.blue,
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
                          color: index == 4 ? Colors.blue : Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: MaterialButton(
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                              color: index == 4 ? Colors.white : Colors.blue,
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
