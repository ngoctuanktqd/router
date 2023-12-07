import 'package:flutter/material.dart';
import 'package:routers/apps/routers/router_name.dart';

BottomNavigationBar bottomNavigationBarCustom(
    BuildContext context, currentIndex) {
  return BottomNavigationBar(
    onTap: (index) {
      switch (index) {
        case 0:
          Navigator.pushNamed(context, RouterName.homePage);
        case 1:
          Navigator.pushNamed(context, RouterName.categoryPage);
        default:
          Navigator.pushNamed(context, RouterName.homePage);
      }
    },
    currentIndex: currentIndex,
    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.category_outlined),
        label: 'Category',
      ),
    ],
    selectedItemColor: Colors.blue,
    // selectedIconTheme: const IconThemeData(
    //   color: Colors.blue,
    // ),
  );
}
