// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../entities/user_entity.dart';
import '../repositories/i_auth_repository.dart';

class LoginUseCase {
  IAuthRepository repository;
  LoginUseCase({required this.repository});

  Future<void> call(String email, String password) async {
    return await repository.login(email, password);
  }
}
