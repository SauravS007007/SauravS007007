import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:racemose/app/modules/chat/controllers/controller1.dart';
import 'package:racemose/app/modules/chat/views/chatDetailpage.dart';

class ChatView1 extends GetView<ChatController> {
  var imageurl =
      "https://img.freepik.com/free-vector/gradient-network-connection-background_23-2148874050.jpg?w=2000";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("chatpage"),
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_back)),
        ),
        body: Container(
          color: Colors.white,
          child: ListView.builder(itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Get.to(chatDetailpage(username: "$index"));
              },
              leading: Container(
                height: 40,
                width: 40,
                child: CachedNetworkImage(
                  imageUrl: imageurl,
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: imageProvider, fit: BoxFit.cover)),
                  ),
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              title: Text("chat no $index"),
              subtitle: const Text("message from saurav"),
            );
          }),
        ),
      ),
    );
  }
}
