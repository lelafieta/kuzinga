import 'package:kuzinga/src/features/auth/data/datasources/i_auth_data_source.dart';
import 'package:kuzinga/src/features/auth/domain/entities/user_entity.dart';
import 'package:kuzinga/src/features/auth/domain/repositories/i_auth_repository.dart';

class AuthRepository extends IAuthRepository {
  final IAuthDataSource authDataSource;

  AuthRepository({required this.authDataSource});

  @override
  Future<UserEntity?> getCurrentUser() {
    throw UnimplementedError();
  }

  @override
  Future<void> login(String email, String password) async {
    try {
      await authDataSource.login(email, password);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> logout() {
    throw UnimplementedError();
  }

  @override
  Future<void> register(
      String email, String password, String fullName, String role) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
