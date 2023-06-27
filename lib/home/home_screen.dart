import 'package:blog/constant.dart';
import 'package:blog/home/components/blog_post.dart';
import 'package:blog/home/components/search.dart';
import 'package:blog/model/Blog.dart';
import 'package:blog/responsive.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: List<Widget>.generate(
              blogPosts.length,
              (index) {
                return BlogPostCard(
                  blog: blogPosts[index],
                );
              },
            ),
          ),
        ),
        if (!Responsive.isMobile(context))
          const SizedBox(width: kDefaultPadding),
        if (!Responsive.isMobile(context))
          Expanded(
            child: Search(),
          ),
      ],
    );
  }
}
