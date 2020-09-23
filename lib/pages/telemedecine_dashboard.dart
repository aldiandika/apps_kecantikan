import 'package:apps_kecantikan/widgets/list_docter_widget.dart';
import 'package:apps_kecantikan/widgets/list_doctor_telemedicine_widget.dart';
import 'package:apps_kecantikan/widgets/search_filter.dart';
import 'package:flutter/material.dart';

class TelemedecineDashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Telemedicine"),
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
                itemCount: 14,
                itemBuilder: (BuildContext context, int index) {
                  return ListDoctorTelemedecine(
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
