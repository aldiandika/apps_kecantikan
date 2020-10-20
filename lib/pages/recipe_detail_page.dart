import 'package:apps_kecantikan/widgets/button_Booking_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'chat_page.dart';

class RecipeDetail extends StatelessWidget {
  double heightScreen = Get.height;
  double widthScreen = Get.width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recipe Detail"),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: 500,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Color(0xffD6D6D6),
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Text("13 Oktober 2020",
                    style: TextStyle(fontWeight: FontWeight.w500)),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Text("No. Booking : 210/212/za/110920",
                    style: TextStyle(fontWeight: FontWeight.w500)),
              ),
              Divider(
                color: Color(0xffD6D6D6),
                thickness: 1,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Text("Dermatologist : dr. Zara Spk.",
                    style: TextStyle(fontWeight: FontWeight.w500)),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Text("Batas Penebusan : 3 kali",
                    style: TextStyle(fontWeight: FontWeight.w500)),
              ),
              Divider(
                color: Color(0xffD6D6D6),
                thickness: 1,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/product.jpg'),
                                    fit: BoxFit.fill,
                                  ),
                                  border: Border.all(
                                    width: 1,
                                    color: Color(0xffB6B6B6),
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Night Cream",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10,
                                      ),
                                    ),
                                    Text(
                                      "50 ml",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xffB6AAAA)),
                                    ),
                                    Text(
                                      "1 buah",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xffB6AAAA)),
                                    ),
                                    SizedBox(height: 5),
                                    Container(
                                      width: widthScreen * 0.5,
                                      child: Text(
                                        "Digunakan pagi, digunakan setelah mencuci muka",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Rp. 75.000,00",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xffB6AAAA),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Color(0xffD6D6D6),
                      thickness: 1,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/product.jpg'),
                                    fit: BoxFit.fill,
                                  ),
                                  border: Border.all(
                                    width: 1,
                                    color: Color(0xffB6B6B6),
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Night Cream",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10,
                                      ),
                                    ),
                                    Text(
                                      "50 ml",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xffB6AAAA)),
                                    ),
                                    Text(
                                      "1 buah",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xffB6AAAA)),
                                    ),
                                    SizedBox(height: 5),
                                    Container(
                                      width: widthScreen * 0.5,
                                      child: Text(
                                        "Digunakan pagi, digunakan setelah mencuci muka",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Rp. 75.000,00",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xffB6AAAA),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Color(0xffD6D6D6),
                      thickness: 1,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Rp. 1.234.000,00",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Color(0xffD6D6D6),
                      thickness: 1,
                    ),
                  ],
                ),
              ),
              Expanded(child: Container()),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ButtonBooking(
                  height: 40,
                  width: widthScreen,
                  text: "Order",
                  fontSize: 16,
                  txtColor: Colors.white,
                  bgnColor: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
