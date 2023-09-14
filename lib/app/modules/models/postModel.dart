// import 'package:flutter/cupertino.dart';

// class post_model {
//   late final String? imageUrl1,
//       username2,
//       postType3,
//       profileImg4,
//       userId5,
//       numberofComments6,
//       caption7,
//       option1Count8,
//       option2Count9,
//       option3Coun10,
//       option4Count11,
//       correctOption12,
//       option1_13,
//       option2_14,
//       option3_15,
//       option4_16,
//       numberofMutuals17,
//       totalVotes18,
//       totalviews19,
//       puborPrivate20,
//       nooffollowers21,
//       nooffollowing22,
//       postcount23,
//       name24,
//       biodata25,
//       noofNotifications26,
//       noofcommentReplies27;
//   late DateTime? postDate;
//   late List? userPosts, savedposts, postComments;
//   post_model(
//       {this.imageUrl1,
//       this.username2,
//       this.postType3,
//       this.profileImg4,
//       this.userId5,
//       this.postDate,
//       this.numberofComments6,
//       this.caption7,
//       this.option1Count8,
//       this.option2Count9,
//       this.option3Coun10,
//       this.option4Count11,
//       this.correctOption12,
//       this.option1_13,
//       this.option2_14,
//       this.option3_15,
//       this.option4_16,
//       this.numberofMutuals17,
//       this.totalVotes18,
//       this.totalviews19,
//       this.puborPrivate20,
//       this.nooffollowers21,
//       this.nooffollowing22,
//       this.postcount23,
//       this.name24,
//       this.biodata25,
//       this.noofNotifications26,
//       this.noofcommentReplies27});

//   post_model.fromJson(
//       Map<String, dynamic> json,
//       this.imageUrl1,
//       this.username2,
//       this.postType3,
//       this.profileImg4,
//       this.userId5,
//       this.postDate,
//       this.numberofComments6,
//       this.caption7,
//       this.option1Count8,
//       this.option2Count9,
//       this.option3Coun10,
//       this.option4Count11,
//       this.correctOption12,
//       this.option1_13,
//       this.option2_14,
//       this.option3_15,
//       this.option4_16,
//       this.numberofMutuals17,
//       this.totalVotes18,
//       this.totalviews19,
//       this.puborPrivate20,
//       this.nooffollowers21,
//       this.nooffollowing22,
//       this.postcount23,
//       this.name24,
//       this.biodata25,
//       this.noofNotifications26,
//       this.noofcommentReplies27) {
//     imageUrl1 = json['num1'];
//   }
// }

// class photoModel {
//   late final String? title, url, thumbnailUrl;
//   late final int? id, albumId;

//   photoModel({this.title, this.url, this.thumbnailUrl, this.id, this.albumId});

//   photoModel.fromJson(Map<String, dynamic> json) {
//     id = json["id"];
//     title = json["title"];
//     url = json["url"];
//     albumId = json["albumId"];
//     thumbnailUrl = json["thumbnailUrl"];
//   }
// }

// class AlbumsCollection {
//   late final List<photoModel>? photos;

//   AlbumsCollection({this.photos});

//   AlbumsCollection.fromJson(Map<String, dynamic> json) {
//     photos = <photoModel>[];
//     json['photos'].foreach((v) {
//       photos!.add(photoModel.fromJson(json));
//     });
//     // photos?.add(photoModel.fromJson(json)) ;
//   }
// }

import 'dart:convert';

class Welcome {
  int? albumId;
  int? id;
  String? title;
  String? url;
  String? thumbnailUrl;

  Welcome({
    this.albumId,
    this.id,
    this.title,
    this.url,
    this.thumbnailUrl,
  });

  factory Welcome.fromRawJson(String str) => Welcome.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        albumId: json["albumId"],
        id: json["id"],
        title: json["title"],
        url: json["url"],
        thumbnailUrl: json["thumbnailUrl"],
      );

  Map<String, dynamic> toJson() => {
        "albumId": albumId,
        "id": id,
        "title": title,
        "url": url,
        "thumbnailUrl": thumbnailUrl,
      };

  map(Welcome Function(dynamic entry) param0) {}
}
