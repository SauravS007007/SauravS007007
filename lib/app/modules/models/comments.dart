import 'dart:convert';

class Comments {
  int? commentId;
  int? userId;
  int? postId;
  String? comment;
  String? date;
  int? likeCount;
  int? dislikeCount;
  int? noOfReposts;
  int? commentType;
  int? parentComment;

  Comments({
    this.commentId,
    this.userId,
    this.postId,
    this.comment,
    this.date,
    this.likeCount,
    this.dislikeCount,
    this.noOfReposts,
    this.commentType,
    this.parentComment,
  });

  factory Comments.fromRawJson(String str) =>
      Comments.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Comments.fromJson(Map<String, dynamic> json) => Comments(
        commentId: json["comment_id"],
        userId: json["user_id"],
        postId: json["post_id"],
        comment: json["comment"],
        date: json["date"],
        likeCount: json["likeCount"],
        dislikeCount: json["dislikeCount"],
        noOfReposts: json["no_of_reposts"],
        commentType: json["comment_type"],
        parentComment: json["parent_comment"],
      );

  Map<String, dynamic> toJson() => {
        "comment_id": commentId,
        "user_id": userId,
        "post_id": postId,
        "comment": comment,
        "date": date,
        "likeCount": likeCount,
        "dislikeCount": dislikeCount,
        "no_of_reposts": noOfReposts,
        "comment_type": commentType,
        "parent_comment": parentComment,
      };
}
