import 'package:expandable_text/text_parser.dart';
import 'package:flutter/material.dart';
import 'package:flutter_parsed_text/flutter_parsed_text.dart';
import 'package:racemose/app/modules/Home/Contollers/hashtagController.dart';

import 'package:racemose/app/modules/Home/Views/commentsPage.dart';
import 'package:get/get.dart';
import 'package:racemose/app/modules/Home/Views/hashtagView.dart';
import 'package:racemose/app/modules/models/hashtags.dart';

class postCaption extends StatelessWidget {
  const postCaption({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HashtagController controller1 = Get.put(HashtagController());

    return InkWell(
      onTap: () {
        Get.to(const commentsPage());
      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
        color: Colors.pink,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const Flexible(
            //   child: Text.rich(
            //     TextSpan(
            //       children: [
            //         TextSpan(
            //           text: 'saurav_suryawanshi ',
            //           style:
            //               TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            Flexible(
                child: ParsedText(
              text:
                  "@saurav_suryawanshi this is the test text for cheching #hashtags and #happydiwali do you like to play #firecracker",
              parse: <MatchText>[
                MatchText(
                    pattern: r"\B#\w\w+",
                    style: const TextStyle(color: Colors.blue),
                    onTap: (Hashtags) {
                      print(Hashtags);
                      Get.to(HashtagView(), arguments: Hashtags);
                    }),
                MatchText(
                    pattern: r"\B@\w\w+",
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    onTap: (username) {
                      print(username);
                      Get.to(HashtagView(), arguments: username);
                    })
              ],
            )),
          ],
        ),
      ),
    );
  }
}
