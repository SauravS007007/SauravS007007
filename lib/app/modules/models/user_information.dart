import 'dart:convert';

class UserInformation {
  int? userId;
  String? username;
  int? isactive;
  int? accountType;
  int? followersCount;
  int? followingCount;
  int? postsCount;
  String? createdOn;
  String? name;
  String? country;
  String? state;
  String? city;
  int? mobileNo;
  String? password;
  int? isMainAccount;
  String? emailId;
  String? profileUrl;
  String? bio;

  UserInformation({
    this.userId,
    this.username,
    this.isactive,
    this.accountType,
    this.followersCount,
    this.followingCount,
    this.postsCount,
    this.createdOn,
    this.name,
    this.country,
    this.state,
    this.city,
    this.mobileNo,
    this.password,
    this.isMainAccount,
    this.emailId,
    this.profileUrl,
    this.bio,
  });

  factory UserInformation.fromRawJson(String str) =>
      UserInformation.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserInformation.fromJson(Map<String, dynamic> json) =>
      UserInformation(
        userId: json["user_id"],
        username: json["username"],
        isactive: json["isactive"],
        accountType: json["account_type"],
        followersCount: json["followers_count"],
        followingCount: json["following_count"],
        postsCount: json["posts_count"],
        createdOn: json["created_on"],
        name: json["name"],
        country: json["country"],
        state: json["state"],
        city: json["city"],
        mobileNo: json["mobile_no"],
        password: json["password"],
        isMainAccount: json["isMainAccount"],
        emailId: json["email_id"],
        profileUrl: json["profile_url"],
        bio: json["bio"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "username": username,
        "isactive": isactive,
        "account_type": accountType,
        "followers_count": followersCount,
        "following_count": followingCount,
        "posts_count": postsCount,
        "created_on": createdOn,
        "name": name,
        "country": country,
        "state": state,
        "city": city,
        "mobile_no": mobileNo,
        "password": password,
        "isMainAccount": isMainAccount,
        "email_id": emailId,
        "profile_url": profileUrl,
        "bio": bio,
      };
}
