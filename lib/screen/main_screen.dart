import 'package:blog/constant.dart';
import 'package:blog/home/home_screen.dart';
import 'package:blog/screen/components/header.dart';
import 'package:blog/screen/components/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:blog/controllers/MenuController.dart' as menu_controller;
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  final menu_controller.MenuController _controller =
      Get.put(menu_controller.MenuController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _controller.scaffoldKey,
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              constraints: const BoxConstraints(maxWidth: kMaxWidth),
              child: SafeArea(child: HomeScreen()),
            ),
          ],
        ),
      ),
    );
  }
}
