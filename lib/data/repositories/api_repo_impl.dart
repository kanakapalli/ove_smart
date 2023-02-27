import 'package:ovesmart/data/datasources/remote/api.dart';
import 'package:ovesmart/domain/entities/user.dart';

import 'package:ovesmart/core/error/failure.dart';

import 'package:dartz/dartz.dart';

import '../../domain/entities/authholder.dart';
import '../../domain/repositories/api_repositories.dart';
import '../../injection_container.dart';
class ApiRepositoriesImpl implements ApiRepositories {
  final AuthRemoteDataSource apiRemoteDataSource;
  
  ApiRepositoriesImpl(this.apiRemoteDataSource);

  @override
  Future<Either<Failure, User>> login(AuthHolder details) async {
    try {
      final data = await apiRemoteDataSource.login();
      return Right(data);
    } on ServerFailure {
      return Left(ServerFailure());
    }
  }
}



