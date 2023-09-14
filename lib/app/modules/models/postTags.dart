import 'dart:convert';

class PostTags {
  int? postId;
  String? tag;

  PostTags({
    this.postId,
    this.tag,
  });

  factory PostTags.fromRawJson(String str) =>
      PostTags.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PostTags.fromJson(Map<String, dynamic> json) => PostTags(
        postId: json["post_id"],
        tag: json["tag"],
      );

  Map<String, dynamic> toJson() => {
        "post_id": postId,
        "tag": tag,
      };
}
