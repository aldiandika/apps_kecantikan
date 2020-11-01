import 'package:apps_kecantikan/data/treatment_product_dummy.dart';
import 'package:apps_kecantikan/widgets/treatment_card_product_widget.dart';
import 'package:flutter/material.dart';

class TreatmentDetailPage extends StatefulWidget {
  @override
  _TreatmentDetailPageState createState() => _TreatmentDetailPageState();
}

class _TreatmentDetailPageState extends State<TreatmentDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Treatment Detail'),
        centerTitle: true,
        backgroundColor: Color(0xFF986756),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context, 'Back to Care');
          },
        ),
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 20.0,),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              constraints: BoxConstraints(
                maxHeight: 280.0,
                minHeight: 120.0
              ),
              child: Image.asset(
                'assets/images/care-1.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Peeling',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    overflow: TextOverflow.clip,
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    'Rp. 120.000,00 - Rp. 250.000,00',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFE6BCA8),
                    ),
                    overflow: TextOverflow.clip,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.star_border,
                          color: Color(0xFF986756),
                        ),
                        SizedBox(
                          width: 1.0,
                        ),
                        Text(
                          '4.5 (100)',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0,),
              color: Colors.black26,
              child: Text(
                'Product',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Container(
              color: Colors.black26,
              width: MediaQuery.of(context).size.width,
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: 56.0),
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  physics: NeverScrollableScrollPhysics(),

                  shrinkWrap: true,

                  itemCount: TreatmentProductDummy.treatmentDummy.length, // Number of Product
                  itemBuilder: (context, index) => CardTreatmentProduct(
                    productPrice: TreatmentProductDummy.treatmentDummy[index]["productPrice"],
                    productName: TreatmentProductDummy.treatmentDummy[index]["productName"],
                    clinicCity: TreatmentProductDummy.treatmentDummy[index]["clinicCity"],
                    clinicName: TreatmentProductDummy.treatmentDummy[index]["clinicName"],
                    productDays: TreatmentProductDummy.treatmentDummy[index]["productDays"],
                    productDuration: TreatmentProductDummy.treatmentDummy[index]["productDuration"],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
