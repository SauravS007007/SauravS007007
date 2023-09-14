import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:racemose/app/modules/Home/Contollers/controller1.dart';

class HashtagView extends GetView<HomeController1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Get.arguments),
      ),
      body: Container(
        child: Center(
          child: Text("hashtag...."),
        ),
      ),
    );
  }
}
