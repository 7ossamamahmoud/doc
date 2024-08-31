import 'package:dio/dio.dart';
import 'package:doc/core/networking/api_service.dart';
import 'package:doc/core/networking/dio_factory.dart';
import 'package:doc/features/login/data/repos/login_repo.dart';
import 'package:doc/features/login/logic/login_cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';


final getIt = GetIt.instance;

initGetIt() {
  // Dio and Api Service
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Login Repo and Cubit
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));


}