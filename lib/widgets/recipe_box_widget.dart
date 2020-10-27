import 'package:apps_kecantikan/pages/recipe_dashboard_page.dart';
import 'package:apps_kecantikan/widgets/button_Booking_widget.dart';
import 'package:apps_kecantikan/widgets/search_filter.dart';
import 'package:flutter/material.dart';

class RecipeBox extends StatelessWidget {
  final String noRecipe;
  final String countDays;
  final String name;
  final String klinik;
  final String schedule;
  final int statusFinish;

  const RecipeBox({
    Key key,
    this.noRecipe = "",
    this.countDays = "",
    this.name = "",
    this.klinik = "",
    this.schedule = "",
    this.statusFinish = 0,
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
                Row(
                  children: [
                    Text(
                      noRecipe,
                      style: TextStyle(
                        color: Color(0xffB6AAAA),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  klinik,
                  style: TextStyle(
                    color: Color(0xffB6AAAA),
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      schedule,
                      style: TextStyle(
                        color: Color(0xffB6AAAA),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ButtonBooking(
                            text: "Order",
                            fontSize: 10,
                            txtColor: Colors.white,
                            bgnColor: Colors.blue,
                          ),
                        ],
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
                  "See All",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              ),
              onTap:  () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => RecipePage(),
                ));
              },
            ),
          ),
        ),
      ],
    ));
  }
}
