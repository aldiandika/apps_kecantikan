import 'package:flutter/material.dart';

class RecommendArticle extends StatefulWidget {
  @override
  _RecommendArticleState createState() => _RecommendArticleState();
}

class _RecommendArticleState extends State<RecommendArticle> {
  List<int> generateNumbers() => List<int>.generate(4, (i) => i + 1);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 20.0,
            ),
            Text(
              'Recommended Articles',
              style: TextStyle(
                fontSize: 18.0,
                color: Color(0xFF986756),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 4.0),
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Card(
                  elevation: 1.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
//                        height: MediaQuery.of(context).size.height * 0.2,
//                        height: 100.0,
                        child: Image.asset(
                          'assets/images/cleansing.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(2.0),
                        margin: EdgeInsets.all(2.0),
                        child: Text(
                          '10 Cara agar kulit tetap glowing',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          overflow: TextOverflow.clip,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  childAspectRatio: (1 / 1),
                  padding: EdgeInsets.only(
                    top: 0.0,
                    bottom: 0.0,
                    right: 1.0,
                    left: 1.0,
                  ),
                  children: generateNumbers().map((int i) {
                    return Container(
                      child: Card(
                        elevation: 1.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(4.0),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.07,
                              child: Image.asset(
                                'assets/images/cleansing.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(1.0),
                              margin: EdgeInsets.all(1.0),
                              child: Text(
                                'Mencegah penuaan dini',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 8.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54,
                                ),
                                overflow: TextOverflow.clip,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          child: FlatButton(
            child: Text(
              'see more',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            padding: EdgeInsets.all(0.0),
            onPressed: () => print('Button pressed'),
          ),
        ),
      ],
    );
  }
}
