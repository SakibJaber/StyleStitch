// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);


import 'dart:convert';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  String phone;

  LoginModel({
    required this.phone,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        phone: json["phone"],
      );

  Map<String, dynamic> toJson() => {
        "phone": phone,
      };
}
