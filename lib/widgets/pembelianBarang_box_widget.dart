import 'package:apps_kecantikan/pages/order_history_page.dart';
import 'package:apps_kecantikan/widgets/button_Booking_widget.dart';
import 'package:apps_kecantikan/widgets/search_filter.dart';
import 'package:flutter/material.dart';

class PembelianBox extends StatelessWidget {
  final String date;
  final String countDays;
  final String name;
  final String klinik;
  final String schedule;
  final int statusFinish;
  final String btnText;

  const PembelianBox({
    Key key,
    this.date = "",
    this.countDays = "",
    this.name = "",
    this.klinik = "",
    this.schedule = "",
    this.statusFinish = 0,
    this.btnText = "Details",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return Container(
        child: Column(
      children: [
        Container(
          width: widthScreen,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Color(0xffD6D6D6),
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  date,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Color(0xffB6B6B6),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Image.asset(
                        "assets/images/produk_cream.jpg",
                        width: 60,
                        height: 60,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Anti Aging Cream",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Tanpa resep",
                            style: TextStyle(
                              color: Color(0xffB6AAAA),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "1 pc",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "Rp. 75.000,00",
                          style: TextStyle(
                            color: Color(0xffB6AAAA),
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
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Color(0xffD6D6D6),
            ),
            borderRadius: BorderRadius.only(
              // topLeft: Radius.circular(10),
              // topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Material(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            color: Colors.white,
            child: InkWell(
              splashColor: Colors.blue,
              child: Container(
                height: heightScreen * 0.03,
                width: widthScreen,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Text(
                  btnText,
                  style: TextStyle(
                    color: Color(0xffE6BCA8),
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderHistoryPage(),
                    ));
              },
            ),
          ),
        ),
      ],
    ));
  }
}
