import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:racemose/app/modules/auth/Controllers/controller1.dart';

class AuthView1 extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Center(
          child: Text("authentication"),
        ),
      ),
    );
  }
}
