import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  final RxInt _selectedIndex = 0.obs;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int get selectedIndex => _selectedIndex.value;
  List<String> get menuItems => ['Blog', 'Images', 'About Me'];
  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  void openOrClosedDrawer() {
    if (_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openEndDrawer();
    } else {
      _scaffoldKey.currentState!.openDrawer();
    }
  }

  void setMenuIndex(int index) {
    _selectedIndex.value = index;
  }
}
