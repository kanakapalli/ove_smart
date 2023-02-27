import 'package:ovesmart/domain/entities/user.dart';

class UserModel extends User {
  UserModel(
      {required super.userId, required super.username, required super.email});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      userId: json["userId"],
      username: json["username"],
      email: json["email"],
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        "userId": userId,
        "username": username,
        "email": email,
      };
}
UserModel user = UserModel(userId: "1", username: "username", email: "email");
