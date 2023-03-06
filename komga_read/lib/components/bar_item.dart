import 'package:flutter/material.dart';

class BarItem extends BottomNavigationBarItem {
  BarItem(String imageName, String title)
      : super(
          icon: Image.asset(
            "assets/images/bar/$imageName.png",
            width: 35,
          ),
          activeIcon: Image.asset(
            "assets/images/bar/${imageName}_active.png",
            width: 35,
          ),
          label: title,
        );
}
