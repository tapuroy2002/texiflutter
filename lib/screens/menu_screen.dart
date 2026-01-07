import 'package:flutter/material.dart';
import 'package:taxiflutter/color_Theme/color_theme.dart';
import 'package:taxiflutter/components/menu_items_Navigation/nav_Manu.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ColorTheme.calmProfessional,
      child: Container(
        padding: EdgeInsets.all(19),
        margin: const EdgeInsets.only(top: 66, bottom: 26, left: 24, right: 24),
        decoration: BoxDecoration(
          color: ColorTheme.surfaceBlue,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            CustomHeaderMini(title: 'Select vehicle'),

            const SizedBox(height: 60.5),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: Color(0XFF274577),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                'Select your vehicle with menu',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: ColorTheme.platinum,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height:14),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(19),
              decoration: BoxDecoration(
                color: ColorTheme.surfaceBlue,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Color(0XFF3D5A80)),
              ),
              child: Theme(
                data: Theme.of(
                  context,
                ).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  leading: const Icon(
                    Icons.directions_car,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'Select vehicle',
                    style: TextStyle(color: Colors.white),
                  ),
                  iconColor: Colors.white,
                  collapsedIconColor: Colors.white,
                  children: List.generate(3, (i) {
                    return ListTile(
                      title: const Text(
                        'Name id #idnumber',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Checkbox(
                        value: selectedIndex == i,
                        onChanged: (_) {
                          setState(() => selectedIndex = i);
                        },
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
