import 'dart:convert';

class CommentsReposts {
  int? commentId;
  int? repostedBy;
  String? date;

  CommentsReposts({
    this.commentId,
    this.repostedBy,
    this.date,
  });

  factory CommentsReposts.fromRawJson(String str) =>
      CommentsReposts.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CommentsReposts.fromJson(Map<String, dynamic> json) =>
      CommentsReposts(
        commentId: json["comment_id"],
        repostedBy: json["reposted_by"],
        date: json["date"],
      );

  Map<String, dynamic> toJson() => {
        "comment_id": commentId,
        "reposted_by": repostedBy,
        "date": date,
      };
}
