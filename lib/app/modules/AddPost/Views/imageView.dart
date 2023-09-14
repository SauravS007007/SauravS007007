import 'dart:io';

import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:racemose/app/modules/AddPost/Views/caption.dart';
import 'package:racemose/app/modules/AddPost/controllers/controller1.dart';

class AddImageView1 extends GetView<AddPostController> {
  const AddImageView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AddPostController controller1 = Get.put(AddPostController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Get.back(),
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => controller1.selectedImagePath.value == ''
                    ? Container(
                        color: Colors.white,
                      )
                    : Image.file(File(controller1.cropImagePath.value),
                        width: double.infinity, height: 400),
              ),
              Obx(() => Text(controller.cropImageSize.value)),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () => Get.back(),
                      child: Container(
                        height: 50,
                        width: 100,
                        color: Colors.black,
                      ),
                    ),
                    InkWell(
                      onTap: () => Get.to(const captionView3()),
                      child: Container(
                        height: 50,
                        width: 100,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
