import 'package:blog/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:blog/controllers/MenuController.dart' as menu_controller;
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  final menu_controller.MenuController _controller =
      Get.put(menu_controller.MenuController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: kDarkBlackColor,
        child: Obx(
          () => ListView(
            children: [
              DrawerHeader(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding * 3.5),
                  child: SvgPicture.asset('assets/icons/logo.svg'),
                ),
              ),
              ...List<Widget>.generate(
                _controller.menuItems.length,
                (index) => DrawItem(
                  title: _controller.menuItems[index],
                  isActive: index == _controller.selectedIndex,
                  press: () {
                    _controller.setMenuIndex(index);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback press;

  const DrawItem({
    super.key,
    required this.title,
    required this.isActive,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        selected: isActive,
        selectedColor: kPrimaryColor,
        onTap: press,
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
