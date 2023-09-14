import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:racemose/app/modules/Home/Views/mutualViews.dart';

// ignore: camel_case_types, must_be_immutable
class postMutuals extends StatelessWidget {
  postMutuals({Key? key, required this.imageurl}) : super(key: key);

  late String imageurl;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(MutualView());
      },
      child: Container(
        margin: const EdgeInsets.fromLTRB(8, 5, 5, 5),
        color: Colors.white,
        child: Row(
          children: [
            for (int i = 0; i < 3; i++)
              Align(
                widthFactor: 0.5,
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.black,
                    child: CachedNetworkImage(
                      imageUrl: imageurl,
                      imageBuilder: (context, imageProvider) => Container(
                        // height: 80,
                        // width: 80,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: imageProvider, fit: BoxFit.cover)),
                      ),
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                ),
              ),
            Container(
                margin: const EdgeInsets.fromLTRB(7, 0, 0, 0),
                color: Colors.amber,
                height: 20,
                child: const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: 'voted by '),
                      TextSpan(
                        text: '36 mutuals ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'and 240 ohters'),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
