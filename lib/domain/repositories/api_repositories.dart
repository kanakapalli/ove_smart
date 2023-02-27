




import 'package:ovesmart/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:ovesmart/domain/entities/authholder.dart';
import '../entities/user.dart';

abstract class ApiRepositories{
 Future<Either<Failure,User>> login(AuthHolder details);
}

// referall@gmail.com