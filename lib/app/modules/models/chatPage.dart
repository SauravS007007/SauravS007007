import 'dart:convert';

class ChatPage {
  int? connectionId;
  String? connectionDate;
  int? sentBy;
  int? sentTo;
  int? isNewMessage;

  ChatPage({
    this.connectionId,
    this.connectionDate,
    this.sentBy,
    this.sentTo,
    this.isNewMessage,
  });

  factory ChatPage.fromRawJson(String str) =>
      ChatPage.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChatPage.fromJson(Map<String, dynamic> json) => ChatPage(
        connectionId: json["connection_id"],
        connectionDate: json["connection_date"],
        sentBy: json["sent_by"],
        sentTo: json["sent_to"],
        isNewMessage: json["isNewMessage"],
      );

  Map<String, dynamic> toJson() => {
        "connection_id": connectionId,
        "connection_date": connectionDate,
        "sent_by": sentBy,
        "sent_to": sentTo,
        "isNewMessage": isNewMessage,
      };
}
