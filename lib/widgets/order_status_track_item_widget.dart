import 'package:flutter/material.dart';

class TrackItemWidget extends StatefulWidget {
  final String headTitle;
  final String subTitle;
  final bool statusNow;

  const TrackItemWidget(
      {Key key,
      this.headTitle = "",
      this.subTitle = "",
      this.statusNow = false})
      : super(key: key);

  @override
  _TrackItemState createState() => _TrackItemState();
}

class _TrackItemState extends State<TrackItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: 50.0,
      ),
      padding: EdgeInsets.all(6.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.statusNow ? Container(
            child: Text(
              widget.headTitle,
              style: TextStyle(
                fontSize: 14.0,
                color: Color(0xFF986756),
                fontWeight: FontWeight.w700,
              ),
            ),
          ) :
          Container(
            child: Text(
              widget.headTitle,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black54,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
            child: Text(
              widget.subTitle,
              style: TextStyle(
                fontSize: 11.0,
                color: Colors.black45,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
