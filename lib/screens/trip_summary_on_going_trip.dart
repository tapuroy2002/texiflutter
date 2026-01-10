import 'package:flutter/material.dart';
import 'package:taxiflutter/components/labels/tags.dart';
import 'package:taxiflutter/components/menu_items_Navigation/action_Row.dart';
import 'package:taxiflutter/components/menu_items_Navigation/nav_Manu.dart';

class TripSummaryOnGoingTrip extends StatelessWidget {
  const TripSummaryOnGoingTrip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0E192B),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 62),
          child: Column(
            spacing: 12,
            children: [
              CustomHeaderMini(title: 'Trip history'),
              SizedBox(height: 48,),

              Align(
                alignment: Alignment.topLeft,
                child: Tags(label: 'My orders'),
              ),

              ActionRow(
                title: '#1526',
                description: '\$100',
                statusLabel: 'Completed',
              ),

              ActionRow(
                title: '#1526',
                description: '\$100',
                statusLabel: 'Completed',
              ),

              ActionRow(
                title: '#1526',
                description: '\$100',
                statusLabel: 'Completed',
              ),

              ActionRow(
                title: '#1526',
                description: '\$100',
                statusLabel: 'Completed',
              ),

              ActionRow(
                title: '#1526',
                description: '\$100',
                statusLabel: 'Completed',
              ),

              ActionRow(
                title: '#1526',
                description: '\$100',
                statusLabel: 'Canceled',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
