import 'dart:convert';

class BlockedTable {
  int? blockedBy;
  int? blockedTo;

  BlockedTable({
    this.blockedBy,
    this.blockedTo,
  });

  factory BlockedTable.fromRawJson(String str) =>
      BlockedTable.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BlockedTable.fromJson(Map<String, dynamic> json) => BlockedTable(
        blockedBy: json["blocked_by"],
        blockedTo: json["blocked_to"],
      );

  Map<String, dynamic> toJson() => {
        "blocked_by": blockedBy,
        "blocked_to": blockedTo,
      };
}
