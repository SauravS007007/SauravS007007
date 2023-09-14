import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:racemose/app/modules/AddPost/Views/imageView.dart';
import 'package:racemose/app/modules/AddPost/Views/writepostView.dart';

import 'package:racemose/app/modules/AddPost/controllers/controller1.dart';

//add post screen

class AddPostView2 extends GetView<AddPostController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListTile(
                title: const Text(
                  "Add Image",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: const Text("add image here"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Get.to(const AddImageView1());
                  Get.snackbar("add images", "message");
                  // controller.pickImage(ImageSource.gallery);
                },
              ),
              ListTile(
                title: const Text(
                  "Write something",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: const Text("what's in your mind"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Get.to(WritePostView());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
