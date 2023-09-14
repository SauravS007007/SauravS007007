import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:racemose/app/modules/AddPost/Views/bipollview.dart';
import 'package:racemose/app/modules/AddPost/Views/view5.dart';
import 'package:racemose/app/modules/AddPost/controllers/controller1.dart';
import 'package:racemose/app/modules/AddPost/controllers/fourpollController.dart';

import 'package:racemose/app/modules/widgets/bipoll.dart';
import 'package:racemose/app/modules/widgets/fourPolls.dart';

class optionsView extends GetView<AddPostController> {
  @override
  Widget build(BuildContext context) {
    fourPollController controller = Get.put(fourPollController());
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Options",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          InkWell(
            child: Container(
              child: const IgnorePointer(child: bipoll()),
              margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            ),
            onTap: () {
              Get.to(const BipollView6());
            },
          ),
          const Divider(),
          InkWell(
            child: Container(
              child: IgnorePointer(child: fourPolls(controller1: controller)),
              margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
            ),
            onTap: () {
              Get.to(const fourPollView5());
            },
          ),
          // fourPolls(controller1: controller)
        ],
      ),
    );
  }
}
