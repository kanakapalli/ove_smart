import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:ovesmart/data/datasources/remote/api.dart';
import 'package:ovesmart/data/repositories/api_repo_impl.dart';
import 'package:ovesmart/domain/repositories/api_repositories.dart';


final instance = GetIt.instance;

Future<void> init() async {
  //! Features - Number Trivia
  // Bloc
  // sl.registerFactory(
  //   () => NumberTriviaBloc(
  //     concrete: sl(),
  //     inputConverter: sl(),
  //     random: sl(),
  //   ),
  // );
  instance.registerLazySingleton(() => http.Client());

   instance.registerLazySingleton<ApiRepositories>(
    () => ApiRepositoriesImpl(
    ApiRemoteDataSourceImpl(
     http.Client()
    )
    ),
  );

  // // Use cases
  // sl.registerLazySingleton(() => GetConcreteNumberTrivia(sl()));
  // sl.registerLazySingleton(() => GetRandomNumberTrivia(sl()));

  // // Repository
  // sl.registerLazySingleton<NumberTriviaRepository>(
  //   () => NumberTriviaRepositoryImpl(
  //     localDataSource: sl(),
  //     networkInfo: sl(),
  //     remoteDataSource: sl(),
  //   ),
  // );

  // // Data sources
  // sl.registerLazySingleton<NumberTriviaRemoteDataSource>(
  //   () => NumberTriviaRemoteDataSourceImpl(client: sl()),
  // );

  // sl.registerLazySingleton<NumberTriviaLocalDataSource>(
  //   () => NumberTriviaLocalDataSourceImpl(sharedPreferences: sl()),
  // );

  // //! Core
  // sl.registerLazySingleton(() => InputConverter());
  // sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  // //! External
  // final sharedPreferences = await SharedPreferences.getInstance();
  // sl.registerLazySingleton(() => sharedPreferences);
  // sl.registerLazySingleton(() => http.Client());
  // sl.registerLazySingleton(() => DataConnectionChecker());
}
