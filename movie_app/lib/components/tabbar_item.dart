import 'package:flutter/material.dart';

class TabbarItem extends BottomNavigationBarItem {
  TabbarItem(String imageName, String title)
      : super(
          icon: Image.asset(
            "assets/images/tabbar/$imageName.png",
            width: 35,
          ),
          activeIcon: Image.asset(
            "assets/images/tabbar/${imageName}_active.png",
            width: 35,
          ),
          label: title,
        );
}
