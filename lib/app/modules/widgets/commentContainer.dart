import 'package:flutter/material.dart';
import 'package:racemose/app/modules/Home/Views/commentsPage.dart';
import 'package:get/get.dart';

class commentContainer extends StatelessWidget {
  const commentContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      color: Colors.black12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // constraints:
            //     const BoxConstraints(minWidth: 200, maxWidth: 300),
            decoration: BoxDecoration(
                color: Colors.white70, borderRadius: BorderRadius.circular(10)),
            height: 40,
            width: 50,
            child: InkWell(
              onTap: () {
                Get.to(const commentsPage());
              },
              child: Container(
                child: const Icon(Icons.mode_comment),
              ),
            ),
          ),
          Container(
            constraints: const BoxConstraints(minWidth: 50, maxWidth: 90),
            decoration: BoxDecoration(
                color: Colors.white70, borderRadius: BorderRadius.circular(10)),
            height: 40,
            child: const Center(
              child: Text("10k"),
            ),
            // width: 50,
          ),
          Container(
            constraints: const BoxConstraints(minWidth: 50, maxWidth: 90),
            decoration: BoxDecoration(
                color: Colors.white70, borderRadius: BorderRadius.circular(10)),
            height: 40,
            child: const Center(
              child: Text(
                "100",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 16),
              ),
            ),
            //width : 50
          ),
          Container(
            // constraints:
            //     const BoxConstraints(minWidth: 200, maxWidth: 300),
            decoration: BoxDecoration(
                color: Colors.white70, borderRadius: BorderRadius.circular(10)),
            height: 40,
            width: 50,
            child: Container(
              child: const Icon(Icons.compare_arrows_rounded),
            ),
          ),
        ],
      ),
    );
  }
}
