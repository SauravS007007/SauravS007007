import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:racemose/app/modules/Activity/Views/view1.dart';

import 'package:racemose/app/modules/AddPost/Views/view1.dart';

import 'package:racemose/app/modules/Home/Views/view1.dart';
import 'package:racemose/app/modules/Profile/Views/view1.dart';
import 'package:racemose/app/modules/Search/Views/view1.dart';

import '../../../../primeProvider.dart';

class RootController extends GetxController {
  final DioClient _primeClient = DioClient();

  var isbuttonPressed = false.obs;
  var indexofIcon = 0.obs;
  var pressediconIndex = 0.obs;

  final List icon1 = [];
  final List iconList1 = [
    Icons.home_outlined,
    Icons.search_outlined,
    Icons.add,
    Icons.notifications_none,
    Icons.person_add
  ];

  final List iconList2 = [
    Icons.home_filled,
    Icons.youtube_searched_for,
    Icons.add_box,
    Icons.notifications,
    Icons.person_add
  ];

  final List<Widget> screens = [
    HomeView(),
    SearchView(),
    AddPostView2(),
    const ActivityView(),
    ProfileView()
  ];
}
