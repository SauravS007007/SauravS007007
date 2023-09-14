import 'package:flutter/material.dart';
import 'package:racemose/app/modules/Profile/Controllers/controller1.dart';
import 'package:get/get.dart';
import 'package:racemose/app/modules/widgets/profilepagebottomshit.dart';

class profileAppbar extends StatelessWidget {
  const profileAppbar({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final ProfileController1 controller;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      title: const Text(
        "Racemose",
        style: TextStyle(
            color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 21),
      ),
      actions: [
        // ignore: avoid_print
        IconButton(
            onPressed: () async {
              Get.bottomSheet(
                const profilepageBottomshit(),
              );

              // List<Welcome>? list1 = await _client.getphotos();

              // controller.list1 = await _client.getphotos();
              // print(controller.list1[0].url);
              // print(controller.list1[44].id);
              // print(welcome);
              // print("${json["url"]}");
              // print("${json.id}");
              // print("${json.url}");
              // print("${json.thumbnailUrl}");
              // print("${json.title}");
              // print("${json.albumId}");
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.blue,
            ))
      ],
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }
}
