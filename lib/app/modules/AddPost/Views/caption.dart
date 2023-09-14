import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:racemose/app/modules/AddPost/Views/options.dart';

import 'package:racemose/app/modules/AddPost/controllers/controller1.dart';

class captionView3 extends GetView<AddPostController> {
  const captionView3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.blue,
          ),
          onPressed: () => Get.back(),
        ),
        backgroundColor: Colors.white,
        title: const Text(
          "caption",
          style: TextStyle(color: Colors.blue),
        ),
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 300,
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 15),
              child: TextField(
                minLines: 5,
                maxLines: 10,
                cursorColor: Colors.black,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintStyle: const TextStyle(
                    color: Colors.black45,
                    fontSize: 18,
                  ),
                  hintText: "caption for your image",
                  contentPadding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
                  filled: true,
                  fillColor: Colors.black12,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              width: MediaQuery.of(context).size.width,
            ),
            const Spacer(),
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
                      color: Colors.blue,
                    ),
                  ),
                  InkWell(
                    onTap: () => Get.to(() => optionsView()),
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
    );
  }
}
