import 'package:flutter/material.dart';
import 'package:taxiflutter/components/overlays/add_Number.dart';
import 'package:taxiflutter/components/overlays/current_trip.dart';
import 'package:taxiflutter/components/overlays/notice.dart';
import 'package:taxiflutter/components/overlays/pay_Amount.dart';
import 'package:taxiflutter/components/overlays/scan_and_Pay.dart';
import 'package:taxiflutter/components/receipts_Components/payment_Completed.dart';
import 'package:taxiflutter/components/receipts_Components/receipt_Sent.dart';
import 'package:taxiflutter/screens/home_screen.dart';
import 'package:taxiflutter/screens/login_screens.dart';
import 'components/buttons/medium_Button.dart';
import 'components/feedback/location_Access.dart';
import 'components/feedback/total_Fare.dart';
import 'components/labels/bt_Status.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ReceiptSent()
    );
  }
}
