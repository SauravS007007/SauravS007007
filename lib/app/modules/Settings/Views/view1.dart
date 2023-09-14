import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:racemose/app/modules/Settings/Controllers/controller1.dart';

class SettingsView1 extends GetView<SettingsController1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Settings",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            ListTile(
              title: Text(
                "Account Type",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              subtitle: Text("public"),
            )
          ],
        ),
      ),
    );
  }
}
