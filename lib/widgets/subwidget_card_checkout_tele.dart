import 'package:flutter/material.dart';

class CardCheckoutTele extends StatefulWidget {
  @override
  _CardCheckoutTeleState createState() => _CardCheckoutTeleState();
}

class _CardCheckoutTeleState extends State<CardCheckoutTele> {
  int numOfAppo = 1; // Number of doctor appoinment

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 4.0),
      child: Card(
        elevation: 1.0,
        child: Container(
          margin: EdgeInsets.all(6.0),
          height: numOfAppo == 1 ? 120.0 : null,
          child:ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 120.0,
            ),
            child: ListView.separated(
              itemCount: numOfAppo,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => Divider(
                color: Colors.grey,
              ),
              itemBuilder: (context, item) => Container(
                margin: EdgeInsets.only(
                  bottom: 6.0,
                  top: 6.0,
                  left: 8.0,
                  right: 8.0,
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: ConstrainedBox(
                        constraints: BoxConstraints(minHeight: 50.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'dr. Zara, Spk.',
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w900,
                              ),
                              overflow: TextOverflow.clip,
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              'Klinik Jaya Abadi',
                              style: TextStyle(
                                fontSize: 11.0,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              '11 September 2020',
                              style: TextStyle(
                                fontSize: 11.0,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              '09.00 - 09.30',
                              style: TextStyle(
                                fontSize: 11.0,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: ConstrainedBox(
                        constraints: BoxConstraints(minHeight: 100.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment:
                          MainAxisAlignment.center,
                          children: [
                            Text(
                              'Rp 75.000,00',
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w800,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
