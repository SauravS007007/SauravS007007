import 'package:flutter/material.dart';

class viewComment extends StatelessWidget {
  const viewComment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: const [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(text: 'view 23 comments'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
