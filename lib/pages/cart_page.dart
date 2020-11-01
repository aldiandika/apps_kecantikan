import 'package:apps_kecantikan/pages/checkout_page.dart';
import 'package:apps_kecantikan/widgets/cart_product_widget.dart';
import 'package:apps_kecantikan/widgets/cart_telemedicine_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var initializationSettingsAndroid =
    AndroidInitializationSettings('logokecantikan');
    var initializationSettingsIOs = IOSInitializationSettings();
    var initSetttings = InitializationSettings(
        initializationSettingsAndroid, initializationSettingsIOs);

    flutterLocalNotificationsPlugin.initialize(initSetttings,
        onSelectNotification: onSelectNotification);
  }

  Future onSelectNotification(String payload) async {
    showDialog(
      context: context,
      builder: (_) {
        return new AlertDialog(
          title: Text("PayLoad"),
          content: Text("Payload : $payload"),
        );
      },
    );
  }

  Future _showNotificationWithoutSound() async {
    var scheduledNotificationDateTime =
    DateTime.now().add(Duration(seconds: 10));
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
        'checkout_notif', 'checkout_notif', 'Notif after checkout',
        playSound: false, importance: Importance.Max, priority: Priority.High);
    var iOSPlatformChannelSpecifics =
    IOSNotificationDetails(
        presentSound: false,
        presentAlert: true,
        presentBadge: true);
    var platformChannelSpecifics = new NotificationDetails(
        androidPlatformChannelSpecifics, iOSPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.schedule(
      0,
      'Apps Kecantikan',
      'Sudah dipakai krim malamnya ?',
      scheduledNotificationDateTime,
      platformChannelSpecifics,
      payload: 'No_Sound',
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cart Summary'),
          backgroundColor: Color(0xFF986756),
          centerTitle: true,
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
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 12.0,
                  ),
                  child: Column(
                    children: [
                      // Cart Telemedicine
                      CartTelemedicine(),
                      // End of Cart Telemedicine
                      SizedBox(
                        height: 24.0,
                      ),
                      CartProduct(),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Card(
                elevation: 10.0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Total: Rp 270.000,00',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.clip,
                      ),
                      Container(
                        width: 100.0,
                        height: 26.0,
                        child: RaisedButton(
                          child: Text(
                            'Checkout',
                            style: TextStyle(fontSize: 12.0),
                          ),
                          color: Color(0xFF986756),
                          textColor: Colors.white,
                          elevation: 3.0,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                          ),
                          onPressed: () {
                            _showNotificationWithoutSound();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CheckoutPage()),
                            );
                          },
                        ),
                      ),
                    ],
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
