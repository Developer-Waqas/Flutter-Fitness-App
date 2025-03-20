import 'dart:convert';

class User {
  final String id;
  final String fullName;
  final String phoneNumber;
  final String email;
  final String password;

  User(
      {required this.id,
      required this.fullName,
      required this.phoneNumber,
      required this.email,
      required this.password});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'fullName': fullName,
      'phoneNumber': phoneNumber,
      'email': email,
      'password': password
    };
  }

  String toJson() => json.encode(toMap());

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['_id'] as String? ?? "",
      fullName: map['fullName'] as String? ?? "",
      phoneNumber: map['phoneNumber'] as String? ?? "",
      email: map['email'] as String? ?? "",
      password: map['password'] as String? ?? "",
    );
  }

  factory User.formJson(String source) => User.fromMap(json.decode(source) as Map<String,dynamic>);
}
