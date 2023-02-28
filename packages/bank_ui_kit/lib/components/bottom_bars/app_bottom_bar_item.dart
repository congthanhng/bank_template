import 'package:bank_ui_kit/values/app_colors.dart';
import 'package:flutter/material.dart';

enum NavBarLabel { home, shop, card, chat, history }

class AppBottomBarItem {
  static List<BottomNavigationBarItem> generate(List<String> pathIcon) =>
      List.generate(
        pathIcon.length,
            (index) =>
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(
                  'packages/bank_ui_kit/${pathIcon[index]}')),
              label: NavBarLabel.values[index].name,
              backgroundColor: Colors.black,
            ),
      );
}
