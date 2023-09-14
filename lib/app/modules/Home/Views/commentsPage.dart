import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:racemose/app/modules/Home/Contollers/controller1.dart';
import 'package:racemose/app/modules/widgets/commentContainer.dart';

class commentsPage extends GetView<HomeController1> {
  const commentsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Icons.arrow_back)),
          ),
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  color: Colors.pink,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Flexible(
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'saurav_suryawanshi ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              TextSpan(
                                  text:
                                      'this is my first uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuupost and i aam buildig the platen app from scrathc i am going to be a doctor'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                return Container(
                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          CircleAvatar(
                            radius: 20,
                          ),
                          Text(
                            "saurav suryawanshi",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          IconButton(
                              onPressed: null, icon: Icon(Icons.more_vert)),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Flexible(
                              child: ExpandableText(
                                  "hhhhhhhhffffffffffffffffffffffhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhfffffffffffffffffffffhhhhhhhhhhhhhhhhhhh",
                                  expandText: 'show more')),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 5, 15, 5),
                        height: 50,
                        child: Row(
                          children: [
                            const Icon(Icons.thumb_up_sharp),
                            Container(
                              margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                              width: 20,
                              child: const Text("50"),
                            ),
                            const Icon(Icons.thumb_down),
                            Container(
                              margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                              width: 20,
                              child: const Text("50"),
                            ),
                            const Spacer(),
                            const Icon(Icons.dashboard_customize),
                            Container(
                              margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                              width: 20,
                              child: const Text("50"),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 30,
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(5, 5, 5, 10),
                              child: const Text("20 replies"),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }, childCount: 50))
            ],
          )),
    );
  }
}
