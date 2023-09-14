import 'dart:convert';

class ConnectedAccounts {
  int? userId1;
  int? userId2;

  ConnectedAccounts({
    this.userId1,
    this.userId2,
  });

  factory ConnectedAccounts.fromRawJson(String str) =>
      ConnectedAccounts.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ConnectedAccounts.fromJson(Map<String, dynamic> json) =>
      ConnectedAccounts(
        userId1: json["user_id1"],
        userId2: json["user_id2"],
      );

  Map<String, dynamic> toJson() => {
        "user_id1": userId1,
        "user_id2": userId2,
      };
}
