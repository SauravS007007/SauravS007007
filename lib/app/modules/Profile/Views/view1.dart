import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:racemose/app/modules/Profile/Controllers/controller1.dart';

import 'package:racemose/app/modules/models/postModel.dart';

import 'package:racemose/app/modules/widgets/profileAppbar.dart';
import 'package:racemose/app/modules/widgets/profileInfo.dart';
import 'package:racemose/app/modules/widgets/profilePosts.dart';

import 'package:racemose/app/modules/Profile/Providers/provider1.dart';

class ProfileView extends GetView<ProfileController1> {
  var imageurl =
      "https://img.freepik.com/free-vector/gradient-network-connection-background_23-2148874050.jpg?w=2000";

  final DioClient _client = DioClient();

  ProfileView({Key? key}) : super(key: key);

  // List<Welcome> list1 = <Welcome>[];

  @override
  Widget build(BuildContext context) {
    // RootController controller1 = Get.put(RootController());
    // Get.create<ProfileController1>(() => ProfileController());
    ProfileController1 controller = Get.put(ProfileController1());
    return Scaffold(
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

              print(data.runtimeType);
              print(data!.length);
              // print(data);

              print("data");
              return CustomScrollView(slivers: [
                profileAppbar(controller: controller),
                profileInfo(imageurl: imageurl),
                SliverToBoxAdapter(
                  child: Container(
                    height: 75,
                    color: Colors.purple,
                    child: const Center(
                      child: Text("edit Profile"),
                    ),
                  ),
                ),
                profileposts(controller: controller, data: data),
              ]);
            }
          }

          // Displaying LoadingSpinner to indicate waiting state
          return const Center(
            child: CircularProgressIndicator(),
          );
        },

        // Future that needs to be resolved
        // inorder to display something on the Canvas
        future: controller.getAll(),
      ),
    );
  }
}
