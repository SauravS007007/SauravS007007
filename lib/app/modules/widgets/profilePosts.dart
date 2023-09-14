import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:racemose/app/modules/Profile/Controllers/controller1.dart';
import 'package:racemose/app/modules/Profile/Views/imageView.dart';
import 'package:racemose/app/modules/models/postModel.dart';
import 'package:get/get.dart';

class profileposts extends StatelessWidget {
  const profileposts({
    Key? key,
    required this.controller,
    required this.data,
  }) : super(key: key);

  final ProfileController1 controller;
  final List<Welcome>? data;

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Container(
              color: Colors.red,
              alignment: Alignment.center,
              // color: Colors.teal[100 * (index % 9)],

              child: InkWell(
                onTap: () {
                  print(index);
                  Get.to(() => ProfileView2(
                        imageurl: controller.list1[index].url!,
                        Postid: index,
                        totalPosts: controller.list1.length,
                      ));
                },
                child: Container(
                  child: CachedNetworkImage(
                    imageUrl: data![index].url!,
                    imageBuilder: (context, imageProvider) => Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              image: imageProvider, fit: BoxFit.cover)),
                    ),
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
              ));
        },
        childCount: controller.listLength.value,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        childAspectRatio: 1.0,
      ),
    );
  }
}
