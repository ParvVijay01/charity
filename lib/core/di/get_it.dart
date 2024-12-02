import 'package:charity/core/api/api_client.dart';
import 'package:charity/features/auth/data/datasource/auth_remote_datasource.dart';
import 'package:charity/features/auth/data/repository/auth_repository_impl.dart';
import 'package:charity/features/auth/domain/repository/auth_repository.dart';
import 'package:charity/features/auth/presentation/bloc/user_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';

var getIt = GetIt.instance;

void setup() {
  registerGoogleSignIn();
  registerApiClient();
  registerDataSources();
  registerRepositories();
  registerBloc();
}

void registerGoogleSignIn() {
  getIt.registerSingleton(GoogleSignIn());
}

void registerApiClient() {
  getIt.registerSingleton(ApiClient());
}

void registerDataSources() {
  var dio = getIt<ApiClient>().getDio();
  getIt.registerSingleton(
    AuthRemoteDatasource(
      dio: dio,
    ),
  );
}

void registerRepositories() {
  getIt.registerSingleton<AuthRepository>(AuthRepositoryImpl(
    authRemoteDatasource: getIt(),
    googleSignIn: getIt(),
  ));
}

void registerBloc() {
  getIt.registerFactory(
    () => UserBloc(
      authRepository: getIt(),
    ),
  );
}
