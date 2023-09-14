import 'package:expandable_text/expandable_text.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:racemose/app/modules/Home/Contollers/controller1.dart';

import 'package:racemose/app/modules/Home/Contollers/fourPollController.dart';
import 'package:racemose/app/modules/Profile/Controllers/controller1.dart';

import 'package:racemose/app/modules/chat/views/view.dart';
import 'package:racemose/app/modules/models/postModel.dart';

import 'package:racemose/app/modules/widgets/commentContainer.dart';
import 'package:racemose/app/modules/widgets/dateContainer.dart';
import 'package:racemose/app/modules/widgets/postBipoll.dart';

import 'package:racemose/app/modules/widgets/postCaption.dart';
import 'package:racemose/app/modules/widgets/postContent.dart';
import 'package:racemose/app/modules/widgets/postFourpoll.dart';
import 'package:racemose/app/modules/widgets/postHeader.dart';
import 'package:racemose/app/modules/widgets/postMutuals.dart';
import 'package:racemose/app/modules/widgets/repostComment.dart';
import 'package:racemose/app/modules/widgets/viewComment.dart';
import 'package:racemose/app/modules/Home/Providers/provider1.dart';

class HomeView extends GetView<HomeController1> {
  var imageurl =
      "https://img.freepik.com/free-vector/gradient-network-connection-background_23-2148874050.jpg?w=2000";

  final DioClient _client = DioClient();
  @override
  Widget build(BuildContext context) {
    final PostFourpollcontroller1 =
        Get.create<PostFourpollcontroller>(() => (PostFourpollcontroller()));
    HomeController1 controller = Get.put(HomeController1());
    ProfileController1 controller2 = Get.put(ProfileController1());
    final PostFourpollcontroller2 = Get.find<PostFourpollcontroller>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "racemose",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blue),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () async {
                Get.to(ChatView1());
                var data = await _client.getUser();
                print(data);
                Get.snackbar("$data", "$data");

                print(data);
              },
              icon: const Icon(
                Icons.chat,
                color: Colors.black,
              ))
        ],
      ),
      body: FutureBuilder<List<Welcome>>(
        builder: (ctx, snapshot) {
          // Checking if future is resolved or not
          if (snapshot.connectionState == ConnectionState.done) {
            // If we got an error
            if (snapshot.hasError) {
              return Center(
                child: Text(
                  '${snapshot.error} occurred',
                  style: const TextStyle(fontSize: 18),
                ),
              );

              // if we got our data
            } else if (snapshot.hasData) {
              // Extracting data from snapshot object
              final data = snapshot.data;
              return Container(
                child: Center(
                    child: ListView.builder(
                        itemCount: data!.length,
                        itemBuilder: (context, index) {
                          return Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                postHeader(index: index),
                                postContent(imageurl: data[index].url!),
                                // postBipoll(index: index),
                                const RepostComment(),
                                // PostFourpoll(index: index),
                                controller.postType.value == 0
                                    ? postBipoll(index: index)
                                    : PostFourpoll(index: index),
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
              );
            }
          }

          // Displaying LoadingSpinner to indicate waiting state
          return const Center(
            child: CircularProgressIndicator(),
          );
        },

        // Future that needs to be resolved
        // inorder to display something on the Canvas
        future: controller2.getAll(),
      ),
    );
  }
}
