import 'dart:convert';

class SavedTable {
  int? userId;
  int? postId;
  String? savedOn;

  SavedTable({
    this.userId,
    this.postId,
    this.savedOn,
  });

  factory SavedTable.fromRawJson(String str) =>
      SavedTable.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SavedTable.fromJson(Map<String, dynamic> json) => SavedTable(
        userId: json["user_id"],
        postId: json["post_id"],
        savedOn: json["saved_on"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "post_id": postId,
        "saved_on": savedOn,
      };
}
