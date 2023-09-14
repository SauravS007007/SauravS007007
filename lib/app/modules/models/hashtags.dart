import 'dart:convert';

class Hashtags {
  int? postId;
  String? hashtag;

  Hashtags({
    this.postId,
    this.hashtag,
  });

  factory Hashtags.fromRawJson(String str) =>
      Hashtags.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Hashtags.fromJson(Map<String, dynamic> json) => Hashtags(
        postId: json["post_id"],
        hashtag: json["hashtag"],
      );

  Map<String, dynamic> toJson() => {
        "post_id": postId,
        "hashtag": hashtag,
      };
}
