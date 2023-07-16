// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AuthModel {
  final String acessToken;

  AuthModel({
    required this.acessToken,
  });



  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acess_token': acessToken,
    };
  }

  factory AuthModel.fromMap(Map<String, dynamic> map) {
    return AuthModel(
      acessToken: map['acess_token'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthModel.fromJson(String source) => AuthModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
