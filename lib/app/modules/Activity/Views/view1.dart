import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:racemose/app/modules/widgets/bottomNavigationBar.dart';

class ActivityView extends GetView<GetxController> {
  const ActivityView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<dynamic>(
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
              return const CustomScrollView(slivers: []);
            }
          }

          // Displaying LoadingSpinner to indicate waiting state
          return const Center(
            child: CircularProgressIndicator(),
          );
        },

        // Future that needs to be resolved
        // inorder to display something on the Canvas
        // future: controller.getAll(),
      ),
    );
  }
}
