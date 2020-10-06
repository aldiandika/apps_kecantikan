import 'package:apps_kecantikan/widgets/subwidget_card_pop_derm.dart';
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
                color: Color(0xFF986756),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Container(
          height: 170.0,
          margin: EdgeInsets.only(top: 4.0),
          child: GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            childAspectRatio: (4 / 4.7),
            padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
            children: generateNumbers().map((int i) {
              return CardRow();
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
