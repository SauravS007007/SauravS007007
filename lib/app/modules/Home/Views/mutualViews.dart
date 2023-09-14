import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:racemose/app/modules/Home/Contollers/controller1.dart';

class MutualView extends GetView<HomeController1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("mutual voters"),
      ),
      body: Container(child: ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          title: Text("mutual no $index"),
        );
      })),
    );
  }
}
