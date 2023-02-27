import 'dart:math';

import 'package:equatable/equatable.dart';

class User extends Equatable{
  final String userId;
  final String username;
  final String email;
  User({
    required this.userId,
    required this.username,
    required this.email,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userId: json["userId"],
      username: json["username"],
      email: json["email"],
    );
  }

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "username": username,
        "email": email,
      };
      
        @override
        // TODO: implement props
        List<Object?> get props => [userId, username, email];
}
