import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return Container(
      // padding: EdgeInsets.all(15),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(
                "assets/images/dokter_11.png",
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sarah novita Sari",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "sarahnov@gmail.com",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffB6AAAA),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
