import 'package:blog/constant.dart';
import 'package:blog/responsive.dart';
import 'package:flutter/material.dart';

class SideOption extends StatelessWidget {
  const SideOption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {
            // TODO LOGIN
          },
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(
              horizontal:
                  kDefaultPadding / (Responsive.isDesktop(context) ? 1 : 2),
              vertical:
                  kDefaultPadding / (Responsive.isDesktop(context) ? 1 : 2),
            ),
          ),
          child: const Text(
            'LOGIN',
          ),
        ),
        const SizedBox(
          width: 8.0,
        ),
        ElevatedButton(
          onPressed: () {
            // TODO sign up
          },
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(
              horizontal:
                  kDefaultPadding / (Responsive.isDesktop(context) ? 1 : 2),
              vertical:
                  kDefaultPadding / (Responsive.isDesktop(context) ? 1 : 2),
            ),
          ),
          child: const Text(
            'SIGN UP',
          ),
        ),
      ],
    );
  }
}
