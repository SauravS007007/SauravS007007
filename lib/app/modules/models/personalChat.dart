import 'dart:convert';

class PersonalChat {
  int? chatId;
  String? chatContent;
  int? sentBy;
  int? sentTo;
  String? date;

  PersonalChat({
    this.chatId,
    this.chatContent,
    this.sentBy,
    this.sentTo,
    this.date,
  });

  factory PersonalChat.fromRawJson(String str) =>
      PersonalChat.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PersonalChat.fromJson(Map<String, dynamic> json) => PersonalChat(
        chatId: json["chat_id"],
        chatContent: json["chat_content"],
        sentBy: json["sent_by"],
        sentTo: json["sent_to"],
        date: json["date"],
      );

  Map<String, dynamic> toJson() => {
        "chat_id": chatId,
        "chat_content": chatContent,
        "sent_by": sentBy,
        "sent_to": sentTo,
        "date": date,
      };
}
