import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchFilterWidget extends StatelessWidget {
  final String defHintText;
  SearchFilterWidget({
    Key key,
    this.defHintText = "Cari Dokter",
  }) : super(key: key);

  double heightScreen = Get.height;
  double widthScreen = Get.width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthScreen,
      color: Colors.white,
      padding: EdgeInsets.all(5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: widthScreen * 0.75,
              height: heightScreen * 0.06,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Color(0xFFEBEBEB),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                // onChanged: (text) {
                //   password = text;
                // },
                // controller: passwordController,
                cursorColor: Color(0xff659E8D),
                decoration: InputDecoration(
                    hintText: defHintText,
                    border: InputBorder.none,
                    suffixIcon:
                        IconButton(icon: Icon(Icons.search), onPressed: () {})),
              ),
            ),
            IconButton(
              icon: Image.asset(
                "assets/icons/filter.png",
                color: Color(0xFF888888),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
