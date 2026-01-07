import 'package:flutter/material.dart';
import 'package:taxiflutter/components/buttons/normal_Button.dart';

class Notice extends StatelessWidget {
  final bool isNotice;
  Notice({super.key,required this.isNotice});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor:isNotice?Color(0xFF60A5FA66).withOpacity(0.4):Color(0xFF14254166).withOpacity(0.6),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 64,horizontal: 23),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 20.06,
                horizontal: 16.64,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0x3321375A),
              ),
              child: Icon(Icons.check, color: Color(0XFF60A5FA)),
            ),
            const SizedBox(height: 24),
            Text(
              'Take over',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w400,
                color: Color(0XFFF5F7FA),
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Title',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w400,
                color: Color(0XFFF5F7FA),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Description',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(0XFFCCD6E5),
              ),
            ),

            const SizedBox(height: 16),
            Text(
              isNotice ?'Time':'',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(0XFFFFFFFF),
              ),
            ),
            const SizedBox(height: 16),
            NormalButton(
              text: 'Option',
              textColor: Color(0XFFFFFFFF),
              color: Color(0XFF086CBF),
              strokeColor: Color(0XFF086CBF),
              strokeWidth: 0.0,
              onPressed: (){},
            ),

            const SizedBox(height: 12),
            NormalButton(
              text: 'Option',
              textColor: Color(0XFFFFFFFF),
              color: Color(0xFF3C69A2),
              strokeColor: Color(0XFF60A5FA),
              strokeWidth: 1.01,
              onPressed: (){},
            ),
          ],
        ),
      ),
    );
  }
}
