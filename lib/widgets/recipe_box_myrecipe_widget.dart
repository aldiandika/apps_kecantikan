import 'package:apps_kecantikan/pages/chat_page.dart';
import 'package:apps_kecantikan/widgets/bottom_nav_widget.dart';
import 'package:apps_kecantikan/widgets/button_Booking_widget.dart';
import 'package:flutter/material.dart';

class RecipeBoxMyRecipe extends StatelessWidget {
  final String date;
  final String noResep;
  final String name;
  final String batasPenebusan;
  final String btnText;
  final Function onTap;

  const RecipeBoxMyRecipe({
    Key key,
    this.date = "",
    this.noResep = "",
    this.name = "",
    this.batasPenebusan = "",
    this.btnText = "Details",
    this.onTap,
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
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "No. resep : " + noResep,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Batas penebusan : " + batasPenebusan,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 15),
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
                                image: AssetImage('assets/images/product.jpg'),
                                fit: BoxFit.fill,
                              ),
                              border: Border.all(
                                width: 1,
                                color: Color(0xffB6B6B6),
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          SizedBox(width: 5),
                          Container(
                            height: 50,
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
                                  "Tanpa resep",
                                  style: TextStyle(
                                      fontSize: 10, color: Color(0xffB6AAAA)),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "1 pc",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10,
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
                SizedBox(height: 5),
                Divider(
                  thickness: 1,
                  color: Color(0xffB6B6B6),
                ),
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
                          "Rp. 255.000,00",
                          style: TextStyle(
                            fontSize: 16,
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
              width: 0.7,
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
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              ),
              onTap: onTap,
            ),
          ),
        ),
      ],
    ));
  }
}
