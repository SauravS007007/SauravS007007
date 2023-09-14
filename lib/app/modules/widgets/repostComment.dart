import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RepostComment extends StatelessWidget {
  const RepostComment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 10, 10, 0),
        width: 300,
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
        child: const Center(
          child: ExpandableText(
            "texteeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee6666666666666666666666666666666666666666666666666666666666444444444444444444444444444444444444444444444444eeeeeeeeeeeeeeeeeeee",
            expandText: "show more",
            maxLines: 2,
          ),
        ),
        decoration: BoxDecoration(
            border: Border.all(width: 1),
            borderRadius: const BorderRadius.all(Radius.circular(20))),
      ),
    );
  }
}
