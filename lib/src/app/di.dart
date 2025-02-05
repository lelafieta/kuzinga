import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:kuzinga/src/core/cache/secure_storage.dart';
import 'package:kuzinga/src/features/auth/data/datasources/auth_data_source.dart';
import 'package:kuzinga/src/features/auth/data/datasources/i_auth_data_source.dart';
import 'package:kuzinga/src/features/auth/data/repositories/auth_repository.dart';
import 'package:kuzinga/src/features/auth/domain/repositories/i_auth_repository.dart';
import 'package:kuzinga/src/features/auth/domain/usecases/login_usecase.dart';
import 'package:kuzinga/src/features/auth/presentation/cubit/auth/auth_cubit.dart';

final instance = GetIt.instance;
Future<void> init() async {
  //
  instance.registerFactory(() => FirebaseAuth.instance);
  instance.registerFactory(() => FirebaseFirestore.instance);
  instance.registerFactory(() => FirebaseStorage.instance);
  instance.registerFactory(() => SecureCacheHelper());

  _authInstanceSingleton();
}

void _authInstanceSingleton() {
  instance.registerFactory(() => AuthCubit(loginUseCase: instance()));
  instance.registerFactory(() => LoginUseCase(repository: instance()));
  instance.registerLazySingleton<IAuthRepository>(
      () => AuthRepository(authDataSource: instance()));
  instance.registerLazySingleton<IAuthDataSource>(() => AuthDataSource(
      firebaseFirestore: instance(),
      firebaseAuth: instance(),
      firebaseStorage: instance(),
      secureCacheHelper: instance()));
}
