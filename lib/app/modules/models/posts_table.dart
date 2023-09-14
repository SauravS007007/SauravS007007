import 'dart:convert';

class PostsTable {
  int? postId;
  int? userId;
  String? imageUrl;
  String? option1;
  String? option2;
  String? option3;
  String? option4;
  int? option1Votes;
  int? option2Votes;
  int? option3Votes;
  int? option4Votes;
  String? postDate;
  String? caption;
  int? isactive;
  int? postType;
  int? correctOption;
  int? noOfReposts;
  int? noOfComments;
  String? postContent;

  PostsTable({
    this.postId,
    this.userId,
    this.imageUrl,
    this.option1,
    this.option2,
    this.option3,
    this.option4,
    this.option1Votes,
    this.option2Votes,
    this.option3Votes,
    this.option4Votes,
    this.postDate,
    this.caption,
    this.isactive,
    this.postType,
    this.correctOption,
    this.noOfReposts,
    this.noOfComments,
    this.postContent,
  });

  factory PostsTable.fromRawJson(String str) =>
      PostsTable.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PostsTable.fromJson(Map<String, dynamic> json) => PostsTable(
        postId: json["post_id"],
        userId: json["user_id"],
        imageUrl: json["image_url"],
        option1: json["option1"],
        option2: json["option2"],
        option3: json["option3"],
        option4: json["option4"],
        option1Votes: json["option1_votes"],
        option2Votes: json["option2_votes"],
        option3Votes: json["option3_votes"],
        option4Votes: json["option4_votes"],
        postDate: json["post_date"],
        caption: json["caption"],
        isactive: json["isactive"],
        postType: json["post_type"],
        correctOption: json["correct_option"],
        noOfReposts: json["no_of_reposts"],
        noOfComments: json["no_of_comments"],
        postContent: json["post_content"],
      );

  Map<String, dynamic> toJson() => {
        "post_id": postId,
        "user_id": userId,
        "image_url": imageUrl,
        "option1": option1,
        "option2": option2,
        "option3": option3,
        "option4": option4,
        "option1_votes": option1Votes,
        "option2_votes": option2Votes,
        "option3_votes": option3Votes,
        "option4_votes": option4Votes,
        "post_date": postDate,
        "caption": caption,
        "isactive": isactive,
        "post_type": postType,
        "correct_option": correctOption,
        "no_of_reposts": noOfReposts,
        "no_of_comments": noOfComments,
        "post_content": postContent,
      };
}
