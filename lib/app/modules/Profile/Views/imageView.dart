import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:racemose/app/modules/Profile/Controllers/controller1.dart';
import 'package:racemose/app/modules/widgets/commentContainer.dart';
import 'package:racemose/app/modules/widgets/dateContainer.dart';
import 'package:racemose/app/modules/widgets/postBipoll.dart';
import 'package:racemose/app/modules/widgets/postCaption.dart';
import 'package:racemose/app/modules/widgets/postContent.dart';
import 'package:racemose/app/modules/widgets/postHeader.dart';
import 'package:racemose/app/modules/widgets/postMutuals.dart';
import 'package:racemose/app/modules/widgets/viewComment.dart';

class ProfileView2 extends GetView<ProfileController1> {
  late String imageurl;
  late int totalPosts;
  late int Postid;

  ProfileView2(
      {Key? key,
      required this.imageurl,
      required this.Postid,
      required this.totalPosts})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(ProfileController1());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_back)),
        ),
        body: Container(
          child: Center(
              child: ListView.builder(
                  itemCount: totalPosts,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          postHeader(index: totalPosts - index),
                          postContent(imageurl: controller.list1[index].url!),
                          postBipoll(index: index),
                          Container(
                            height: 1,
                            color: Colors.black,
                          ),
                          const commentContainer(),
                          postMutuals(
                            imageurl: imageurl,
                          ),
                          const postCaption(),
                          const dateContainer(),
                          const viewComment()
                        ],
                      ),
                    );
                  })),
        ),
      ),
    );
  }
}
