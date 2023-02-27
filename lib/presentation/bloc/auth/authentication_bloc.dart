import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ovesmart/domain/entities/user.dart';

import '../../../data/datasources/remote/api.dart';
import '../../../data/repositories/api_repo_impl.dart';
import '../../../domain/entities/authholder.dart';
import '../../../domain/repositories/api_repositories.dart';
import '../../../domain/usecases/login.dart';
import '../../../injection_container.dart';
import 'package:http/http.dart' as http;

part 'authinication_event.dart';
part 'authinication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc(this.authHandler) : super(UnAuthenticated());

  final LoginUseCase authHandler;

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    on<SignUpEvent>(_signup);
    on<LoginEvent>(_login);
    on<LogOutEvent>(_logout);
  }

  FutureOr<void> _signup(
      SignUpEvent event, Emitter<AuthenticationState> emit) {}

  Future<FutureOr<void>> _login(
      LoginEvent event, Emitter<AuthenticationState> emit) async {
    try {
      // ApiRepositoriesImpl(ApiRemoteDataSourceImpl(http.Client()))
      //     .login(const AuthHolder(email: "email", password: "password"));
      // instance<ApiRepositories>().login(AuthHolder(email: 'email', password: 'password'));

      await authHandler(event.details)
      ..foldRight(
          User(userId: "2", username: "username2", email: "email2"),
          (r, previous) => r);
    } catch (e) {
      print(e);
    }
  }

  FutureOr<void> _logout(
      LogOutEvent event, Emitter<AuthenticationState> emit) {}
}
