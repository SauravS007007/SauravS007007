import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:racemose/app/modules/widgets/postHeaderMenu.dart';

class postHeader extends StatelessWidget {
  const postHeader({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        color: Colors.yellow,
        child: ListTile(
          leading: const CircleAvatar(
            radius: 20,
          ),
          title: Text(
            "saurav suryawanshi $index",
            style: const TextStyle(color: Colors.black, fontSize: 18),
          ),
          subtitle: const Text(
            "public",
            style: TextStyle(color: Colors.blue, fontSize: 10),
          ),
          trailing: IconButton(
              onPressed: () {
                Get.bottomSheet((const postHeaderMenu()));
              },
              icon: Icon(Icons.menu)),
        ));
  }
}
