import 'package:flutter/material.dart';

class dateContainer extends StatelessWidget {
  const dateContainer({
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
                TextSpan(text: ' August 7 ,2023'),
                TextSpan(text: ' world!'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
