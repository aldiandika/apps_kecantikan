import 'package:apps_kecantikan/pages/booking_menu.dart';
import 'package:apps_kecantikan/pages/booking_telemedicine_menu.dart';
import 'package:apps_kecantikan/pages/doctor_dashboard_page.dart';
import 'package:apps_kecantikan/pages/doctor_details.dart';
import 'package:apps_kecantikan/pages/home_page.dart';
import 'package:apps_kecantikan/pages/klinik_dashboard.dart';
import 'package:apps_kecantikan/pages/login_page.dart';
import 'package:apps_kecantikan/pages/splashscreen_page.dart';
import 'package:apps_kecantikan/pages/telemedecine_dashboard.dart';
import 'package:apps_kecantikan/pages/telemedecine_docter_detail.dart';
import 'package:apps_kecantikan/widgets/bottom_nav_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/splash',
      getPages: [
        GetPage(name: '/splash', page: () => SplashScreenPage()),
        GetPage(name: '/login', page: ()=> LoginPage()),
        GetPage(name: '/', page: () => BottomNavWidget()),
        GetPage(
            name: '/doctorDashboard',
            page: () => DoctorDashboardPage(),
            transition: Transition.zoom),
        GetPage(
            name: '/doctorDetails',
            page: () => DoctorDetails(),
            transition: Transition.zoom),
        GetPage(
            name: '/bookingMenu',
            page: () => BookingMenu(),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: '/telemedicineDashboard',
            page: () => TelemedecineDashboardPage(),
            transition: Transition.zoom),
        GetPage(
            name: '/TelemedicineDoctorDetails',
            page: () => TelemedicineDoctorDetails(),
            transition: Transition.zoom),
        GetPage(
            name: '/bookingTelemedicineMenu',
            page: () => BookingTelemedecineMenu(),
            transition: Transition.zoom),
        GetPage(
            name: '/klinikDashboard',
            page: () => KlinikDashboardPage(),
            transition: Transition.zoom),
        
      ],
    );
  }
}
