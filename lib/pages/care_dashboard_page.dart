import 'package:apps_kecantikan/widgets/list_care_widget.dart';
import 'package:apps_kecantikan/widgets/list_docter_widget.dart';
import 'package:apps_kecantikan/widgets/list_klinik_widget.dart';
import 'package:apps_kecantikan/widgets/search_filter.dart';
import 'package:flutter/material.dart';

class CareDashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Care"),
        centerTitle: true,
        backgroundColor: Color(0xFF986756),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context, 'Back to Home');
          },
        ),
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SearchFilterWidget(),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return ListCare(
                    index: index,
                  );
                },
              ),
              // child: ListView(
              //   children: [
              //     ListDoctor(),
              //   ],
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
