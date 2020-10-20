import 'package:apps_kecantikan/pages/recipe_detail_page.dart';
import 'package:apps_kecantikan/widgets/booking_box_widget.dart';
import 'package:apps_kecantikan/widgets/recipe_box_myrecipe_widget.dart';
import 'package:apps_kecantikan/widgets/recipe_box_widget.dart';
import 'package:apps_kecantikan/widgets/search_filter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecipePage extends StatefulWidget {
  @override
  _RecipePageState createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    double heightScreen = Get.height;
    double widthScreen = Get.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("My Recipe"),
        centerTitle: true,
      ),
      body: Container(
        height: heightScreen,
        width: widthScreen,
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            SizedBox(height: 10),
            SearchFilterWidget(),
            SizedBox(height: 10),
            Expanded(
              child: Container(
                width: widthScreen,
                child: ListView(
                  children: [
                    RecipeBoxMyRecipe(
                      date: "11 September 2020",
                      noResep: "KC/ZR/001-02120",
                      name: "dr. Zara Spk",
                      batasPenebusan: "3 kali",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RecipeDetail()),
                        );
                      },
                    ),
                    SizedBox(height: 10),
                    RecipeBoxMyRecipe(
                      date: "11 September 2020",
                      noResep: "KC/ZR/001-02120",
                      name: "dr. Zara Spk",
                      batasPenebusan: "3 kali",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RecipeDetail()),
                        );
                      },
                    ),
                    SizedBox(height: 10),
                    RecipeBoxMyRecipe(
                      date: "11 September 2020",
                      noResep: "KC/ZR/001-02120",
                      name: "dr. Zara Spk",
                      batasPenebusan: "3 kali",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RecipeDetail()),
                        );
                      },
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
