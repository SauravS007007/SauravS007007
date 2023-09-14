import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:racemose/app/modules/AddPost/controllers/controller1.dart';
import 'package:racemose/app/modules/widgets/bipoll.dart';

class BipollView6 extends GetView<AddPostController> {
  const BipollView6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const bipoll(),
              Container(
                height: 50,
                width: 100,
                child: const Center(
                  child: Text(
                    "submit",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue),
              )
            ],
          ),
        ),
      ),
    );
  }
}
