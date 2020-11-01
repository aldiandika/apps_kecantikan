import 'package:apps_kecantikan/pages/registration_inputDocument_page.dart';
import 'package:apps_kecantikan/widgets/inputData_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_page.dart';

class RegistrationBiodata extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    double heightScreen = Get.height;
    double widthScreen = Get.width;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Pendaftaran'),
        centerTitle: true,
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back),
        //   onPressed: () {
        //     Navigator.pop(context, 'Back to Login');
        //   },
        // ),
        backgroundColor: Color(0xFF986756),
      ),
      body: Container(
        color: Color(0xFFFFF3F0),
        padding: EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 40.0,
        ),
        alignment: Alignment.center,
        child: Center(
          child: Column(
            children: [
              Container(
                width: widthScreen * 0.7,
                child: Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Color(0xFF986756),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        border: Border.all(
                          color: Color(0xFF986756),
                          width: 1.5,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "1",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.black,
                        // thickness: 1,
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        border: Border.all(
                          color: Color(0xFF986756),
                          width: 1.5,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "2",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF986756),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.black,
                        // thickness: 1,
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        border: Border.all(
                          color: Color(0xFF986756),
                          width: 1.5,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "3",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF986756),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Biodata",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF986756),
                ),
              ),
              SizedBox(height: 15),
              Expanded(
                  child: ListView(
                children: [
                  InputData(
                    labelText: "Nama Lengkap",
                  ),
                  InputData(
                    labelText: "Tanggal Lahir",
                  ),
                  InputData(
                    labelText: "Jenis Kelamin",
                  ),
                  InputData(
                    labelText: "Nomor Handphone",
                  ),
                  InputData(
                    labelText: "Provinsi (Domisili)",
                  ),
                  InputData(
                    labelText: "Kota (Domisili)",
                  ),
                  InputData(
                    labelText: "Apakah Anda merokok?",
                  ),
                  InputData(
                    labelText: "Apakah Anda memiliki alergi",
                  ),
                  InputData(
                    labelText: "Riwayat alergi",
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Container(
                    width: double.infinity,
                    height: 52.0,
                    child: RaisedButton(
                      child: Text(
                        'Next',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      color: Color(0xFF986756),
                      textColor: Colors.white,
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  RegistrationInputDocument()),
                        );
                      },
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
