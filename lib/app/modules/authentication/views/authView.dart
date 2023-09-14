import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:racemose/app/modules/authentication/controllers/authController.dart';

class loginView extends GetView<authController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "platen",
            style: TextStyle(
                fontSize: 24,
                color: Colors.purple.shade900,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Container(
                //   height: 100,
                //   child: const Text(
                //     "Platen",
                //     style: TextStyle(
                //       color: Colors.blue,
                //       fontWeight: FontWeight.bold,
                //       fontSize: 36,
                //     ),
                //   ),
                // ),
                InkWell(
                  child: Container(
                    height: 50,
                    width: 250,
                    child: const Center(
                      child: Text(
                        "create new account",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(width: 0.5),
                        borderRadius:
                            BorderRadius.all(const Radius.circular(5))),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                InkWell(
                  child: Container(
                    height: 50,
                    width: 250,
                    child: const Center(
                      child: Text(
                        "login with email",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 0.5),
                        borderRadius:
                            BorderRadius.all(const Radius.circular(5))),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
