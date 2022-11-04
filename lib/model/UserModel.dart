// ignore_for_file: file_names, prefer_if_null_operators
import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));
String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    required this.com,
    required this.userId,
    required this.userName,
    required this.empCode,
    required this.epfCode,
    required this.cate,
    required this.session,
  });

  String com;
  String userId;
  String userName;
  String empCode;
  dynamic epfCode;
  String cate;
  String session;

  factory User.fromJson(Map<String, dynamic> json) => User(
        com: json["Com"].toString().toUpperCase(),
        userId: json["UserId"],
        userName: json["UserName"],
        empCode: json["EmpCode"],
        epfCode: json["EpfCode"] == null ? "N/A" : json["EpfCode"],
        cate: json["Cate"],
        session: json["Session"],
      );

  Map<String, dynamic> toJson() => {
        "Com": com,
        "UserId": userId,
        "UserName": userName,
        "EmpCode": empCode,
        "EpfCode": epfCode,
        "Cate": cate,
        "Session": session,
      };
}
