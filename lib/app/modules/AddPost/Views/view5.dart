import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:racemose/app/modules/AddPost/controllers/fourpollController.dart';
import 'package:racemose/app/modules/widgets/fourPolls.dart';

class fourPollView5 extends GetView<fourPollController> {
  const fourPollView5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    fourPollController controller1 = Get.put(fourPollController());

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Saved",
            style: TextStyle(color: Colors.blue),
          ),
          backgroundColor: Colors.white,
        ),
        body: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                fourPolls(controller1: controller1),
                Container(
                  height: 50,
                  width: 100,
                  color: Colors.blue,
                  child: const Center(
                    child: Text(
                      "next",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
