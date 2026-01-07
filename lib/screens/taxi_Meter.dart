import 'package:flutter/material.dart';
import 'package:taxiflutter/components/menu_items_Navigation/nav_Manu.dart';
import 'package:taxiflutter/components/overlays/notice.dart';

class TaxiMeter extends StatelessWidget {
  const TaxiMeter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF081524),
      body: Container(
        margin: EdgeInsets.only(top: 66,bottom: 39,left: 24,right: 24),
        child: Container(
          padding: EdgeInsets.only(left: 7,right: 7),
          decoration: BoxDecoration(
            color: Color(0xFF142541),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              CustomHeaderMini(title: 'Connect to taximeter'),
              SizedBox(height: 182,),
              Notice(isNotice: true,description: 'If you want to use a taximeter, please pair your device via Bluetooth.', title0: 'Taximeter Pairing', buttonText1: 'Got it',)
            ],

          ),
        ),
      )
    );
  }
}
