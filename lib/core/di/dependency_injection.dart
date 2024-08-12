import 'package:docdoc/core/networking/api_service.dart';
import 'package:docdoc/core/networking/dio_factory.dart';
import 'package:docdoc/feature/auth/data/repository/login_repository.dart';
import 'package:docdoc/feature/auth/presentation/login/logic/login_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  final dio = DioFactory.getDio();
  sl.registerLazySingleton(() => ApiService(dio));

  // login
  sl.registerLazySingleton<LoginRepository>(
      () => LoginRepository(sl<ApiService>()));
  sl.registerLazySingleton<LoginCubit>(() => LoginCubit(sl<LoginRepository>()));
}
