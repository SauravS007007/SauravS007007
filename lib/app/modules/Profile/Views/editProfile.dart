import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:racemose/app/modules/Profile/Controllers/controller1.dart';

class EditProfileView extends GetView<ProfileController1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Center(
          child: Text("edit profile"),
        ),
      ),
    );
  }
}
