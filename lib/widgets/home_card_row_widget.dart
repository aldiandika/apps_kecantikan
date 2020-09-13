import 'package:flutter/material.dart';

class HomeCardRow extends StatefulWidget {
  @override
  _HomeCardRowState createState() => _HomeCardRowState();
}

class _HomeCardRowState extends State<HomeCardRow> {
  List<int> generateNumbers() => List<int>.generate(3, (i) => i + 1);

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
              'Popular Dermatologist',
              style: TextStyle(
                fontSize: 18.0,
                color: Color(0xFFFF7583),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Container(
          color: Colors.green,
          height: 170.0,
          child: GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            childAspectRatio: (4 / 5),
            padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
            children: generateNumbers().map((int i) {
              return Card(
                elevation: 1.0,
                margin: EdgeInsets.symmetric(
                  vertical: 0.0,
                  horizontal: 6.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/dermatologist.jpg',
                    ),
                    Container(
                      padding: EdgeInsets.all(2.0),
                      margin: EdgeInsets.all(4.0),
                      child: Text(
                        'dr. Meilance. Sp. Derm',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 8.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(2.0),
                      margin: EdgeInsets.all(4.0),
                      child: Text(
                        'Klinik Jaya Sentosa Bandung',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 8.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black45,
                        ),
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
