import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:racemose/app/modules/AddPost/Views/bipollview.dart';
import 'package:racemose/app/modules/AddPost/controllers/controller1.dart';

class AddPollView4 extends GetView<AddPostController> {
  const AddPollView4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.blue,
            ),
            onPressed: () => Get.back(),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Get.to(const BipollView6());
                },
                icon: const Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ))
          ],
          backgroundColor: Colors.white,
          title: const Text(
            "options",
            style: TextStyle(color: Colors.blue),
          ),
          elevation: 0,
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.blue,
                  margin: const EdgeInsets.all(20),
                )
              ],
            ),
          ),
        ));
  }
}
