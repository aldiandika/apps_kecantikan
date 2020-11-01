import 'package:apps_kecantikan/pages/product_detail_page.dart';
import 'package:flutter/material.dart';

class CardProduct extends StatefulWidget {
  @override
  _CardProductState createState() => _CardProductState();
}

class _CardProductState extends State<CardProduct> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProductDetailPage()),
        );
      },
      child: Card(
        elevation: 4.0,
        margin: EdgeInsets.symmetric(
          vertical: 6.0,
          horizontal: 6.0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
        child: Container(
          margin: EdgeInsets.all(4.0),
          child: Column(
            children: [
              Container(
                height: 120.0,
                width: 180.0,
                color: Colors.white,
                child: Image.asset(
                  'assets/images/product.jpg',
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                padding: EdgeInsets.all(2.0),
                margin: EdgeInsets.all(2.0),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Facial Essence SK II',
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                padding: EdgeInsets.all(2.0),
                margin: EdgeInsets.only(
                  top: 8.0,
                  left: 2.0,
                  right: 2.0,
                  bottom: 2.0,
                ),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Rp 130.000,00 ',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  overflow: TextOverflow.clip,
                ),
              ),
              Container(
                padding: EdgeInsets.all(2.0),
                margin: EdgeInsets.all(2.0),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Dengan resep dokter',
                  style: TextStyle(
                    fontSize: 8.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFF7583),
                  ),
                  overflow: TextOverflow.clip,
                ),
              ),
              Container(
                padding: EdgeInsets.all(2.0),
                margin: EdgeInsets.only(
                  top: 8.0,
                  left: 2.0,
                  right: 2.0,
                  bottom: 2.0,
                ),
                alignment: Alignment.centerRight,
                child: Text(
                  'Bandung',
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                  overflow: TextOverflow.clip,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
