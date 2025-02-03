import '../entities/user_entity.dart';

abstract class IAuthRepository {
  Future<void> login(String email, String password);
  Future<void> register(
      String email, String password, String fullName, String role);
  Future<void> logout();
  Future<UserEntity?> getCurrentUser();
}
