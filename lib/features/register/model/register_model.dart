import 'package:meta/meta.dart';
import 'dart:convert';

RegisterModel registerModelFromJson(String str) =>
    RegisterModel.fromJson(json.decode(str));

String registerModelToJson(RegisterModel data) => json.encode(data.toJson());

class RegisterModel {
  String phone;
  String name;
  String email;
  String alterNumber;
  String password;
  String hint;
  String gender;

  RegisterModel({
    required this.phone,
    required this.name,
    required this.email,
    required this.alterNumber,
    required this.password,
    required this.hint,
    required this.gender,
  });

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
        phone: json["phone"],
        name: json["name"],
        email: json["email"],
        alterNumber: json["alterNumber"],
        password: json["password"],
        hint: json["hint"],
        gender: json["gender"],
      );

  Map<String, dynamic> toJson() => {
        "phone": phone, 
        "name": name, 
        "email": email,
        "alterNumber": alterNumber,
        "password": password,
        "hint": hint,
        "gender": gender,
      };
}
