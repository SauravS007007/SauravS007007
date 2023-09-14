import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class postContent extends StatelessWidget {
  const postContent({
    Key? key,
    required this.imageurl,
  }) : super(key: key);

  final String imageurl;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CachedNetworkImage(
        imageUrl: imageurl,
        imageBuilder: (context, imageProvider) => Container(
          width: MediaQuery.of(context).size.width,
          height: 350,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(image: imageProvider, fit: BoxFit.cover)),
        ),
        placeholder: (context, url) => Container(
          child: Container(
            child: const Center(child: Text("loading....")),
            height: 100,
            width: 100,
          ),
          height: 300,
        ),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
