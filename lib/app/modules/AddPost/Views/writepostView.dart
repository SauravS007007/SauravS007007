import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:racemose/app/modules/AddPost/controllers/controller1.dart';

class WritePostView extends GetView<AddPostController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("write something"),
      ),
    );
  }
}
