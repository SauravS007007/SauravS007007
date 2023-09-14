import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:racemose/app/modules/chat/controllers/controller1.dart';

class chatDetailpage extends GetView<ChatController> {
  chatDetailpage({Key? key, required this.username}) : super(key: key);

  late String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$username"),
      ),
    );
  }
}
