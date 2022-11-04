// ignore_for_file: file_names, prefer_if_null_operators
import 'dart:convert';

List<UserModel> userModelFromJson(String str) => List<UserModel>.from(
      json.decode(str).map(
            (x) => UserModel.fromJson(x),
          ),
    );

String userModelToJson(List<UserModel> data) => json.encode(
      List<UserModel>.from(
        data.map(
          (x) => x.toJson(),
        ),
      ),
    );

class UserModel {
  int id;
  String name;
  String email;
  String gender;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.gender,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        gender: json['gender']);
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "gender": gender,
      };

  // factory UserModel.fromJson(Map<String, dynamic> json) =>
  //     _$UserModelFromJson(json);

  // Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
