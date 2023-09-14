import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:racemose/app/modules/AddPost/Views/bipollview.dart';
import 'package:racemose/app/modules/AddPost/Views/options.dart';
import 'package:racemose/app/modules/Profile/Views/view1.dart';
import 'package:racemose/app/modules/Settings/Views/view1.dart';

class profilepageBottomshit extends StatelessWidget {
  const profilepageBottomshit({
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
            ListTile(
              title: const Text(
                "settings",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              leading: const Icon(
                Icons.settings_outlined,
                color: Colors.blue,
                size: 24,
              ),
              onTap: () {
                Get.to(() => SettingsView1());
              },
            ),
            ListTile(
              title: const Text(
                "Saved",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              leading: const Icon(
                Icons.add_box_outlined,
                color: Colors.blue,
                size: 24,
              ),
              onTap: () {
                Get.to(() => optionsView());
              },
            ),
            ListTile(
              title: const Text(
                "Edit Profile",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              leading: const Icon(
                Icons.edit,
                color: Colors.blue,
                size: 24,
              ),
              onTap: () {
                Get.to(ProfileView());
              },
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
