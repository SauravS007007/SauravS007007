import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:racemose/app/modules/AddPost/controllers/fourpollController.dart';

class fourPolls extends StatelessWidget {
  const fourPolls({
    Key? key,
    required this.controller1,
  }) : super(key: key);

  final fourPollController controller1;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      height: 350,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.blue.shade300),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const ListTile(
            title: Text(
              "Add options",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          optionWidget(
            controller1: controller1,
            hintText: "1) option 1 (optional)",
          ),
          optionWidget(
            controller1: controller1,
            hintText: "2) option 2 (optional)",
          ),
          optionWidget(
            controller1: controller1,
            hintText: "3) option 3 (optional)",
          ),
          optionWidget(
            controller1: controller1,
            hintText: "4) option 4 (optional)",
          ),
        ],
      ),
    );
  }
}

class optionWidget extends StatelessWidget {
  const optionWidget(
      {Key? key, required this.controller1, required this.hintText})
      : super(key: key);

  final fourPollController controller1;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.blue.shade200),
      child: Container(
        height: 60,
        margin: const EdgeInsets.fromLTRB(1, 1, 1, 1),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Container(
          height: 80,
          padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
          child: TextField(
            maxLength: 20,
            cursorColor: Colors.black,
            style: const TextStyle(color: Colors.black, fontSize: 18),
            decoration: InputDecoration(
              hintStyle: const TextStyle(color: Colors.black54),
              hintText: hintText,
              contentPadding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}
