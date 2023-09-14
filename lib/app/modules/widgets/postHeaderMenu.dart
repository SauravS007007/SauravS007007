import 'package:flutter/material.dart';
import 'package:get/get.dart';

class postHeaderMenu extends StatelessWidget {
  const postHeaderMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        color: Colors.white,
        child: Column(
          children: [
            ListTile(
              trailing: const Icon(Icons.cancel_outlined),
              onTap: () {
                Get.back();
              },
            ),
            const ListTile(
              title: Text(
                "share post",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.share,
                color: Colors.blue,
                size: 24,
              ),
            ),
            const ListTile(
              title: Text(
                "report post",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.error,
                color: Colors.blue,
                size: 24,
              ),
            ),
            const ListTile(
              title: Text(
                "Edit Profile",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.edit,
                color: Colors.blue,
                size: 24,
              ),
            ),
            const ListTile(
              title: Text(
                "Reposts",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.swap_vert,
                color: Colors.blue,
                size: 24,
              ),
            ),
            const ListTile(
              title: Text(
                "Share Profile",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.share,
                color: Colors.blue,
                size: 24,
              ),
            )
          ],
        ));
  }
}
