part of 'authentication_bloc.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();
  
  @override
  List<Object> get props => [];
}

class UnAuthenticated extends AuthenticationState {}

class Authinicated extends AuthenticationState {
  final User user;
  const Authinicated({required this.user});
}

