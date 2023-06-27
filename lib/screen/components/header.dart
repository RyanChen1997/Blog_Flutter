import 'package:blog/constant.dart';
import 'package:blog/responsive.dart';
import 'package:blog/screen/components/side_option.dart';
import 'package:blog/screen/components/web_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:blog/controllers/MenuController.dart' as menu_controller;

class Header extends StatelessWidget {
  final menu_controller.MenuController _controller =
      Get.put(menu_controller.MenuController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: kDarkBlackColor,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              constraints: const BoxConstraints(maxWidth: kMaxWidth),
              child: Row(
                children: [
                  if (!Responsive.isDesktop(context))
                    IconButton(
                      onPressed: () {
                        _controller.openOrClosedDrawer();
                      },
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                  SvgPicture.asset('assets/icons/logo.svg'),
                  const Spacer(),
                  if (Responsive.isDesktop(context)) WebMenu(),
                  const Spacer(),
                  SideOption()
                ],
              ),
            ),
            const SizedBox(height: kDefaultPadding * 2),
            const Text(
              'Welcome to My Blog',
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: kDefaultPadding * 1.5),
          ],
        ),
      ),
    );
  }
}
