import 'package:blog/constant.dart';
import 'package:blog/home/components/sidebar_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
      title: 'Search',
      child: TextField(
        onChanged: (value) {
          // TODO do some input check
        },
        decoration: InputDecoration(
          hintText: "Type Here...",
          suffixIcon: Padding(
            padding: const EdgeInsets.all(kDefaultPadding / 2),
            child: SvgPicture.asset('assets/icons/feather_search.svg'),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(kDefaultPadding / 2),
            ),
            borderSide: BorderSide(color: Color(0xFFCCCCCC)),
          ),
        ),
      ),
    );
  }
}
