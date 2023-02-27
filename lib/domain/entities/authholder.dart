import 'package:equatable/equatable.dart';

class AuthHolder extends Equatable {
  final String email;
  final String password;

  const AuthHolder({
    required this.email,
    required this.password,
  });

  factory AuthHolder.fromJson(Map<String, dynamic> json) {
    return AuthHolder(
      email: json["email"],
      password: json["password"],
    );
  }

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
      };

  @override
  List<Object?> get props => [email, password];
}
