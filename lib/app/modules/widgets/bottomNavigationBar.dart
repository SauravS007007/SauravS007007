import 'package:flutter/material.dart';
import 'package:racemose/app/modules/Activity/Views/view1.dart';
import 'package:racemose/app/modules/AddPost/Views/view1.dart';
import 'package:racemose/app/modules/Home/Views/view1.dart';
import 'package:racemose/app/modules/Profile/Views/view1.dart';
import 'package:get/get.dart';
import 'package:racemose/app/modules/Search/Views/view1.dart';

class bottomNavigationBar extends StatelessWidget {
  const bottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white10,
      height: 50,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        InkWell(
          onTap: () {
            Get.to(HomeView());
          },
          child: Container(
            child: const Icon(Icons.home_outlined),
          ),
        ),
        InkWell(
          onTap: () {
            Get.to(SearchView());
          },
          child: Container(
            child: const Icon(Icons.search),
          ),
        ),
        InkWell(
          onTap: () {
            Get.to(AddPostView2());
          },
          child: Container(
            child: const Icon(Icons.add),
          ),
        ),
        InkWell(
          onTap: () {
            Get.to(const ActivityView());
          },
          child: Container(
            child: const Icon(Icons.notifications_none),
          ),
        ),
        InkWell(
          onTap: () {
            Get.to(ProfileView());
          },
          child: Container(
            child: const Icon(Icons.person_outline),
          ),
        ),
      ]),
    );
  }
}
