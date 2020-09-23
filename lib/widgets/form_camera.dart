import 'package:flutter/material.dart';

class FormCamera extends StatelessWidget {
  final String text;
  final double height;

  const FormCamera({
    Key key,
    this.text = '',
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return Container(
      width: widthScreen,
      margin: EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 1,
            child: Container(
              width: widthScreen,
              height: heightScreen * 0.035,
              alignment: Alignment.centerLeft,
              child: Text(
                text,
                style: TextStyle(
                  color: Color(0xffB6AAAA),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              width: widthScreen,
              height: height, //heightScreen * 0.035,
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: Color(0xffB6AAAA),
                        ),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Image.asset(
                        "assets/images/dokter_12.jpg",
                        width: 60,
                        height: 60,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: Color(0xffB6AAAA),
                        ),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Image.asset(
                        "assets/images/dokter_12.jpg",
                        width: 60,
                        height: 60,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: Color(0xffB6AAAA),
                        ),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Icon(
                        Icons.camera_alt,
                        size: 15,
                      ),
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
