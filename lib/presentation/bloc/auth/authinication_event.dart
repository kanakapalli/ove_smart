part of 'authentication_bloc.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

class SignUpEvent extends AuthenticationEvent{
  final String email;
  final String password;

  const SignUpEvent({required this.email, required this.password});
}

class LoginEvent extends AuthenticationEvent{
  final AuthHolder details;

  const LoginEvent({required this.details});
}

class LogOutEvent extends AuthenticationEvent{
  const LogOutEvent();
}

class LoginWIthGoogleEvent extends AuthenticationEvent{
  const LoginWIthGoogleEvent();
}

class LoginWithFacebookEvent extends AuthenticationEvent{
  const LoginWithFacebookEvent();
}

class LoginWithOtherEvent extends AuthenticationEvent{
  const LoginWithOtherEvent();
}
