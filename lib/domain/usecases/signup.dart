import 'package:dartz/dartz.dart';
import 'package:ovesmart/core/usecase/usecase.dart';

import '../../core/error/failure.dart';
import '../entities/authholder.dart';
import '../entities/user.dart';
import '../repositories/api_repositories.dart';

class SignupUseCase implements UseCase<User, AuthHolder> {
  final ApiRepositories repo;

  SignupUseCase(this.repo);

  @override
  Future<Either<Failure, User>> call(AuthHolder details) async =>
      await repo.login(details);
}
