import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:racemose/app/modules/Home/Contollers/fourPollController.dart';
import 'package:racemose/app/modules/Search/Views/view1.dart';

class PostFourpoll extends StatefulWidget {
  PostFourpoll({Key? key, this.index}) : super(key: key);

  // final PostFourpollcontroller postFourpollcontroller1;
  final int? index;

  @override
  State<PostFourpoll> createState() => _PostFourpollState();
}

class _PostFourpollState extends State<PostFourpoll>
    with AutomaticKeepAliveClientMixin {
  final postFourpollcontroller1 = Get.find<PostFourpollcontroller>();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              postFourpollcontroller1.isfourPollpressed.value =
                  !postFourpollcontroller1.isfourPollpressed.value;
              print(postFourpollcontroller1.isfourPollpressed.value);
              print(widget.index);
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
              height: 40,
              width: 350,
              child: Obx(() => postFourpollcontroller1.isfourPollpressed.value
                  ? Row(
                      children: [
                        Container(
                          height: 40,
                          width: 338 *
                              (postFourpollcontroller1.option1Votes /
                                  postFourpollcontroller1.totalVotes),
                          color: Colors.black12,
                        ),
                        Container(
                          height: 40,
                          width: 338 *
                              ((postFourpollcontroller1.totalVotes -
                                      postFourpollcontroller1.option1Votes) /
                                  postFourpollcontroller1.totalVotes),
                          color: Colors.white,
                        )
                      ],
                    )
                  : const Center(child: Text("option1"))),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1),
                  borderRadius: const BorderRadius.all(Radius.circular(5))),
            ),
          ),
          InkWell(
            onTap: () {
              postFourpollcontroller1.isfourPollpressed.value =
                  !postFourpollcontroller1.isfourPollpressed.value;
              print(postFourpollcontroller1.isfourPollpressed.value);
              print(widget.index);
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
              height: 40,
              child: Obx(() => postFourpollcontroller1.isfourPollpressed.value
                  ? Row(
                      children: [
                        Container(
                            height: 40,
                            width: 338 *
                                (postFourpollcontroller1.option2Votes /
                                    postFourpollcontroller1.totalVotes),
                            color: Colors.black12),
                        Container(
                          height: 40,
                          width: 338 *
                              ((postFourpollcontroller1.totalVotes -
                                      postFourpollcontroller1.option2Votes) /
                                  postFourpollcontroller1.totalVotes),
                          color: Colors.white,
                        )
                      ],
                    )
                  : const Center(child: Text("option1"))),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1),
                  borderRadius: const BorderRadius.all(Radius.circular(5))),
            ),
          ),
          InkWell(
            onTap: () {
              postFourpollcontroller1.isfourPollpressed.value =
                  !postFourpollcontroller1.isfourPollpressed.value;
              print(postFourpollcontroller1.isfourPollpressed.value);
              print(widget.index);
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
              height: 40,
              child: Obx(() => postFourpollcontroller1.isfourPollpressed.value
                  ? Row(
                      children: [
                        Container(
                          height: 40,
                          width: 338 *
                              (postFourpollcontroller1.option3Votes /
                                  postFourpollcontroller1.totalVotes),
                          color: Colors.black12,
                        ),
                        Container(
                          height: 40,
                          width: 338 *
                              ((postFourpollcontroller1.totalVotes -
                                      postFourpollcontroller1.option3Votes) /
                                  postFourpollcontroller1.totalVotes),
                          color: Colors.white,
                        )
                      ],
                    )
                  : const Center(child: Text("option3"))),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1),
                  borderRadius: const BorderRadius.all(Radius.circular(5))),
            ),
          ),
          InkWell(
            onTap: () {
              postFourpollcontroller1.isfourPollpressed.value =
                  !postFourpollcontroller1.isfourPollpressed.value;
              print(postFourpollcontroller1.isfourPollpressed.value);
              print(widget.index);
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
              height: 40,
              child: Obx(() => postFourpollcontroller1.isfourPollpressed.value
                  ? Stack(children: [
                      Container(
                        height: 40,
                        width: 338,
                        child: const Center(
                            child: Text("optiyyyyyyyyyyyyyyyyyyyyyon 4")),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 338 *
                                (postFourpollcontroller1.option4Votes /
                                    postFourpollcontroller1.totalVotes),
                            color: Colors.black.withOpacity(0.3),
                            child: const Center(child: Text("35%")),
                          ),
                          Container(
                            height: 40,
                            width: 338 *
                                ((postFourpollcontroller1.totalVotes -
                                        postFourpollcontroller1.option4Votes) /
                                    postFourpollcontroller1.totalVotes),
                            color: Colors.white.withOpacity(0.5),
                          )
                        ],
                      ),
                    ])
                  : const Center(child: Text("option4"))),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1),
                  borderRadius: const BorderRadius.all(Radius.circular(5))),
            ),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
