import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:racemose/app/modules/Root/Controllers/controller1.dart';

class RootView extends GetView<RootController> {
  const RootView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.create<RootController>(() => RootController());
    RootController controller1 = Get.put(RootController());

    return Scaffold(
        // ignore: avoid_print
        // body: Obx(() => controller1.screens[controller1.indexofIcon.value]),
        body: Obx(
          () => IndexedStack(
            children: controller1.screens,
            index: controller1.indexofIcon.value,
          ),
        ),
        bottomNavigationBar: Container(
          color: Colors.white10,
          height: 50,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                  5,
                  (index) => BottomIcons(
                        icon1: controller.iconList2[index],
                        icon2: controller.iconList1[index],
                        index: index,
                        controller: controller,
                        controller1: controller1,
                      ))),
        ));
  }
}

class BottomIcons extends StatelessWidget {
  final IconData? icon1;
  final IconData? icon2;
  final int index;
  final RootController controller;
  final RootController controller1;

  const BottomIcons(
      {Key? key,
      this.icon1,
      this.icon2,
      required this.index,
      required this.controller,
      required this.controller1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Obx(
        () => Icon(
          controller1.pressediconIndex.value == index
              ? controller.iconList2[index]
              : controller.iconList1[index],
          color: Colors.black,
        ),
      ),
      color: Colors.black,
      iconSize: 30,
      onPressed: () {
        controller1.indexofIcon.value = index;
        if (controller1.indexofIcon.value !=
            controller1.pressediconIndex.value) {
          controller1.pressediconIndex.value = index;
          print(controller1.pressediconIndex.value);
          controller.isbuttonPressed.value = !controller.isbuttonPressed.value;
        }
        // ignore: avoid_print

        // ignore: avoid_print
      },
    );
  }
}
