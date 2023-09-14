import 'dart:convert';

class FollowersTable {
  int? followedTo;
  int? followedBy;
  String? dateRequested;
  String? dateFollowed;
  int? followingStatus;
  int? isRepost;

  FollowersTable({
    this.followedTo,
    this.followedBy,
    this.dateRequested,
    this.dateFollowed,
    this.followingStatus,
    this.isRepost,
  });

  factory FollowersTable.fromRawJson(String str) =>
      FollowersTable.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FollowersTable.fromJson(Map<String, dynamic> json) => FollowersTable(
        followedTo: json["followed_to"],
        followedBy: json["followed_by"],
        dateRequested: json["date_requested"],
        dateFollowed: json["date_followed"],
        followingStatus: json["following_status"],
        isRepost: json["isRepost"],
      );

  Map<String, dynamic> toJson() => {
        "followed_to": followedTo,
        "followed_by": followedBy,
        "date_requested": dateRequested,
        "date_followed": dateFollowed,
        "following_status": followingStatus,
        "isRepost": isRepost,
      };
}
