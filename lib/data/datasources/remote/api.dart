import 'dart:convert';

import 'package:ovesmart/core/error/failure.dart';
import 'package:ovesmart/data/models/userModel.dart';
import 'package:http/http.dart' as http;

abstract class AuthRemoteDataSource {
  Future<UserModel> login();
}

class ApiRemoteDataSourceImpl extends AuthRemoteDataSource {
  final http.Client client;
  ApiRemoteDataSourceImpl(this.client);

  @override
  Future<UserModel> login() async {
    final url = Uri.parse('asd');
    final res =
        await client.get(url, headers: {"Content-type": "application/json"});
        bool working = true;
    if (res.statusCode == 200 || working) {

      // return UserModel.fromJson(json.decode(res.body));
      return user;
    } else {
      throw ServerFailure();
    }
  }

}
