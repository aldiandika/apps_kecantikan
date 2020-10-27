import 'package:apps_kecantikan/widgets/booking_box_widget.dart';
import 'package:apps_kecantikan/widgets/pembelianBarang_box_widget.dart';
import 'package:apps_kecantikan/widgets/recipe_box_widget.dart';
import 'package:apps_kecantikan/widgets/profile_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'mybooking_page.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    double heightScreen = Get.height;
    double widthScreen = Get.width;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Profile")),
      ),
      body: Container(
        width: widthScreen,
        height: heightScreen,
        color: Colors.white,
        padding: EdgeInsets.all(15),
        child: ListView(
          children: [
            Container(child: ProfileHeader()),
            SizedBox(height: 30),
            Text(
              "My Booking",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            BookingBox(
              date: "11 September 2020",
              name: "dr. Zara Spk",
              klinik: "Klinik Jaya Abadi",
              schedule: "09.00 - 09.30",
              countDays: "6 days to go",
              btnText: "See All",
              statusFinish: 5,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => MybookingPage(),
                ));
              },
            ),
            SizedBox(height: 15),
            Text(
              "My Recipe",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            RecipeBox(
              noRecipe: "KJA-WID-00-210",
              name: "dr. Zara Spk",
              klinik: "Klinik Jaya Abadi",
              schedule: "Berlaku tebus repse : 2",
              // countDays: "",
              statusFinish: 5,
            ),
            SizedBox(height: 15),
            Text(
              "Pembelian Barang",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            PembelianBox(
              date: "11 September 2020",
              name: "dr. Zara Spk",
              klinik: "Klinik Jaya Abadi",
              schedule: "Berlaku tebus resep : 2",
              btnText: "See All",
              statusFinish: 5,
            ),
          ],
        ),
      ),
    );
  }
}
