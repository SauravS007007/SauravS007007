import 'dart:convert';

class UserVotes {
  int? postId;
  int? userId;
  int? selectedOption;

  UserVotes({
    this.postId,
    this.userId,
    this.selectedOption,
  });

  factory UserVotes.fromRawJson(String str) =>
      UserVotes.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserVotes.fromJson(Map<String, dynamic> json) => UserVotes(
        postId: json["post_id"],
        userId: json["user_id"],
        selectedOption: json["selected_option"],
      );

  Map<String, dynamic> toJson() => {
        "post_id": postId,
        "user_id": userId,
        "selected_option": selectedOption,
      };
}
