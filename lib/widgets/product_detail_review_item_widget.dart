import 'package:flutter/material.dart';

class ProductReviewItem extends StatefulWidget {
  @override
  _ProductReviewItemState createState() => _ProductReviewItemState();
}

class _ProductReviewItemState extends State<ProductReviewItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 8.0,
          ),

          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.all(4.0),
                  child: CircleAvatar(
                    maxRadius: 20.0,
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tara Miranda',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                        overflow: TextOverflow.clip,
                      ),
                      SizedBox(
                        height: 2.0,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.star_border,
                              color: Color(0xFF25A0DE),
                            ),
                            SizedBox(
                              width: 1.0,
                            ),
                            Text(
                              '4.5',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Text(
                        'Kecerahan kulit meningkat',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                        overflow: TextOverflow.clip,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          SizedBox(
            height: 8.0,
          ),
        ],
      ),
    );
  }
}
