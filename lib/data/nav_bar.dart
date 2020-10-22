import 'package:flutter/material.dart';

class NavigationItem {
  String name;
  IconData iconData;

  NavigationItem(this.name, this.iconData);
}

List<NavigationItem> getNavigationItems() {
  return <NavigationItem>[
    NavigationItem("Home", Icons.home),
    NavigationItem("Books", Icons.book),
    NavigationItem("Profile", Icons.people),
  ];
}
