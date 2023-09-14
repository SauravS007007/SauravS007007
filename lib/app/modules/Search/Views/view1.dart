// ignore_for_file: unnecessary_const

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:racemose/app/modules/Profile/Controllers/controller1.dart';

import 'package:racemose/app/modules/Search/Controllers/controller1.dart';
import 'package:racemose/app/modules/models/postModel.dart';

ProfileController1 controller1 = Get.put(ProfileController1());

class SearchView extends GetView<SearchController> {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut<SearchController>(() => SearchController(), fenix: true);

    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: InkWell(
                  onTap: () {
                    showSearch(context: context, delegate: searchBar());
                    print("search pressed");
                  },
                  child: IgnorePointer(
                    child: Container(
                      height: 60,
                      padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                      child: TextField(
                        cursorColor: Colors.black,
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          hintStyle: const TextStyle(color: Colors.black45),
                          hintText: "search here",
                          contentPadding:
                              const EdgeInsets.fromLTRB(15, 0, 10, 0),
                          filled: true,
                          fillColor: Colors.black12,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                ),
              ),
              // SliverList(
              //     delegate: SliverChildBuilderDelegate(
              //   (context, index) => CarouselSlider(
              //       options: CarouselOptions(
              //           height: MediaQuery.of(context).size.height,
              //           scrollDirection: Axis.vertical,
              //           aspectRatio: 1,
              //           viewportFraction: 1,
              //           pageSnapping: false),
              //       items: [1, 2, 3, 4, 5].map((i) {
              //         return Builder(
              //           builder: (BuildContext context) {
              //             return Container(
              //                 height: MediaQuery.of(context).size.height,
              //                 margin: const EdgeInsets.all(10),
              //                 decoration: const BoxDecoration(color: Colors.amber),
              //                 child: Text(
              //                   'text $i',
              //                   style: const TextStyle(fontSize: 16.0),
              //                 ));
              //           },
              //         );
              //       }).toList()),
              // )),
              SliverToBoxAdapter(
                child: Container(
                  child: CarouselSlider(
                      options: CarouselOptions(
                          height: MediaQuery.of(context).size.height,
                          scrollDirection: Axis.vertical,
                          aspectRatio: 1,
                          viewportFraction: 1,
                          pageSnapping: false),
                      items: [1, 2, 3, 4, 5].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                                height: MediaQuery.of(context).size.height,
                                margin: const EdgeInsets.all(10),
                                decoration:
                                    const BoxDecoration(color: Colors.amber),
                                child: Text(
                                  'text $i',
                                  style: const TextStyle(fontSize: 16.0),
                                ));
                          },
                        );
                      }).toList()),
                ),
              )
            ],
          )),
    );
  }
}

class searchBar extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruits in controller1.list1) {
      if (fruits.title!.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruits.title!);
      }
    }

    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var results = matchQuery[index];
          return Container(
            color: Colors.black,
            child: ListTile(
              title: Text(results),
            ),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Welcome> matchQuery = [];
    for (var fruits in controller1.list1) {
      if (fruits.title!.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruits);
      }
    }

    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var results = matchQuery[index].title!;
          return ListTile(
            leading: Container(
              height: 40,
              width: 40,
              child: CachedNetworkImage(
                imageUrl: matchQuery[index].url!,
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: imageProvider, fit: BoxFit.cover)),
                ),
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            title: Text(results),
          );
        });
  }
}
