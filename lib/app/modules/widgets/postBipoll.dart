import 'package:flutter/material.dart';

class postBipoll extends StatelessWidget {
  const postBipoll({Key? key, required this.index}) : super(key: key);

  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              print(" poll voted $index");
            },
            child: Container(
              constraints: const BoxConstraints(minWidth: 200, maxWidth: 300),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      print("yes pressed $index");
                    },
                    child: Container(
                      alignment: Alignment.center,
                      constraints:
                          const BoxConstraints(minWidth: 70, maxWidth: 100),
                      margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: const Text(
                        "yes",
                        // softWrap: true,
                        // overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.black12,
                    width: 1.0,
                  ),
                  InkWell(
                    onTap: () {
                      print("anushka");
                    },
                    child: Container(
                      alignment: Alignment.center,
                      constraints:
                          const BoxConstraints(minWidth: 70, maxWidth: 100),
                      margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: const Text(
                        "no",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
