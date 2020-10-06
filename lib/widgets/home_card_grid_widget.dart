import 'package:apps_kecantikan/widgets/subwidget_card_rec_treat.dart';
import 'package:flutter/material.dart';

class HomeCardGrid extends StatefulWidget {
  @override
  _HomeCardGridState createState() => _HomeCardGridState();
}

class _HomeCardGridState extends State<HomeCardGrid> {
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
              'Recommended Treatment',
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
          child: GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            childAspectRatio: (3 / 4),
            padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
            children: generateNumbers().map((int i) {
              return CardRecTreat();
            }).toList(),
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
