import 'package:apps_kecantikan/data/article_dummy.dart';
import 'package:apps_kecantikan/pages/article_show_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../data/dermatology_dummy.dart';
import 'button_Booking_widget.dart';

class ListArticle extends StatelessWidget {
  double heightScreen = Get.height;
  double widthScreen = Get.width;

  final int index;

  ListArticle({
    Key key,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthScreen,
      height: 100,
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        // color: Colors.blue,
        border: Border.all(color: Color(0xFFD6D6D6), width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ArticleDummy.dummy[index]["title"],
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "by",
                      style: TextStyle(
                        color: Color(0xFFEBEBEB),
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      ArticleDummy.dummy[index]["penulis"],
                      style: TextStyle(
                        color: Color(0xFFEBEBEB),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ArticleShow()),
                );
              },
            ),
          ),
          SizedBox(
            width: 25,
          ),
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(ArticleDummy.dummy[index]["photo"]),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
