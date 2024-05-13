import 'package:dot_navbar/models/dotmenuitem_model.dart';
import 'package:flutter/material.dart';

class SharedList {
  static List<DotMenuItemModel> itemList = [
    DotMenuItemModel(
      keyValue: 'home',
      page: Container(
        color: Colors.red,
      ),
      icon: Icons.home,
    ),
    DotMenuItemModel(
      keyValue: 'search',
      page: Container(
        color: Colors.blue,
      ),
      icon: Icons.search,
    ),
    DotMenuItemModel(
      keyValue: 'add',
      page: Container(
        color: Colors.green,
      ),
      icon: Icons.add,
    ),
    DotMenuItemModel(
      keyValue: 'notifications',
      page: Container(
        color: Colors.yellow,
      ),
      icon: Icons.notifications,
    ),
    DotMenuItemModel(
      keyValue: 'profile',
      page: Container(
        color: Colors.purple,
      ),
      icon: Icons.person,
    ),
  ];
}
