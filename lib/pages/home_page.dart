import 'package:apps_kecantikan/widgets/home_card_grid_widget.dart';
import 'package:apps_kecantikan/widgets/home_card_row_widget.dart';
import 'package:apps_kecantikan/widgets/home_carousel_widget.dart';
import 'package:apps_kecantikan/widgets/home_list_icon_widget.dart';
import 'package:apps_kecantikan/widgets/home_rec_article.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //appbar
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.15,
                color: Color(0xFFFFF3F0),
              ),
              Container(
                height: 100.0,
                padding: EdgeInsets.all(8.0),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12.0),
                    bottomRight: Radius.circular(12.0),
                  ),
                  color: Color(0xFF986756),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 20.0,
                  ),
                  title: Container(
                    height: 40.0,
                    padding: EdgeInsets.symmetric(vertical: 2.0,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lia Adelia',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Your balance : Rp 30.000.000,-',
                          style: TextStyle(
                            fontSize: 9.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 32.0,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
            
          ),

          //body
          // Icon list
          HomeListIcon(),
          //End of Icon list

          // scrolled content
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  HomeCarouselWidget(),
                  SizedBox(
                    height: 12.0,
                  ),
                  HomeCardRow(),
                  SizedBox(
                    height: 4.0,
                  ),
                  HomeCardGrid(),
                  SizedBox(
                    height: 4.0,
                  ),
                  RecommendArticle(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
