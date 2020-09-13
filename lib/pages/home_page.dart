import 'package:apps_kecantikan/widgets/home_card_row_widget.dart';
import 'package:apps_kecantikan/widgets/home_carousel_widget.dart';
import 'package:apps_kecantikan/widgets/home_list_icon_widget.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            //appbar
            Container(
              color: Color(0xFF25A0DE),
              height: 120.0,
              padding: EdgeInsets.all(8.0),
              alignment: Alignment.bottomCenter,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  maxRadius: 20.0,
                ),
                title: Text(
                  'Lia Adelia',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
