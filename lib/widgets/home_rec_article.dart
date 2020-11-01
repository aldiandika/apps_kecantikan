import 'package:apps_kecantikan/pages/article_dashboard_page.dart';
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
                height: 180.0,
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
                      Expanded(
                        flex: 4,
                        child: Container(
                          child: Image.asset(
                            'assets/images/cleansing.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: EdgeInsets.all(2.0),
                          margin: EdgeInsets.all(2.0),
                          child: Text(
                            '10 Cara agar kulit tetap glowing',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            overflow: TextOverflow.clip,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: 180.0,
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
                      Expanded(
                        flex: 4,
                        child: Container(
                          child: Image.asset(
                            'assets/images/cleansing.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: EdgeInsets.all(2.0),
                          margin: EdgeInsets.all(2.0),
                          child: Text(
                            '10 Cara agar kulit tetap glowing',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            overflow: TextOverflow.clip,
                          ),
                        ),
                      ),
                    ],
                  ),
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ArticleDashboard()),
              );
            },
          ),
        ),
      ],
    );
  }
}
