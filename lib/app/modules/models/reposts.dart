import 'dart:convert';

class Reposts {
  int? postId;
  int? repostedBy;
  String? dateReposted;

  Reposts({
    this.postId,
    this.repostedBy,
    this.dateReposted,
  });

  factory Reposts.fromRawJson(String str) => Reposts.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Reposts.fromJson(Map<String, dynamic> json) => Reposts(
        postId: json["post_id"],
        repostedBy: json["reposted_by"],
        dateReposted: json["date_reposted"],
      );

  Map<String, dynamic> toJson() => {
        "post_id": postId,
        "reposted_by": repostedBy,
        "date_reposted": dateReposted,
      };
}
