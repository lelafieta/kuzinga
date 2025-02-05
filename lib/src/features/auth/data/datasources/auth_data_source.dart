import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:kuzinga/src/core/cache/secure_storage.dart';
import 'package:kuzinga/src/core/utils/app_utilis.dart';
import 'package:kuzinga/src/features/auth/data/datasources/i_auth_data_source.dart';
import 'package:kuzinga/src/features/auth/domain/entities/user_entity.dart';

class AuthDataSource extends IAuthDataSource {
  final FirebaseFirestore firebaseFirestore;
  final FirebaseAuth firebaseAuth;
  final FirebaseStorage firebaseStorage;
  final SecureCacheHelper secureCacheHelper;

  AuthDataSource(
      {required this.firebaseFirestore,
      required this.firebaseAuth,
      required this.firebaseStorage,
      required this.secureCacheHelper});

  @override
  Future<UserEntity?> getCurrentUser() {
    throw UnimplementedError();
  }

  @override
  Future<void> login(String email, String password) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == "invalid-credential") {
        throw Exception("Credenciais inválidas");
      } else if (e.code == "user-not-found") {
        throw Exception("Utilizador não encontrado");
      } else if (e.code == "wrong-password") {
        throw Exception("E-mail ou password inválido");
      }
    }
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<UserEntity> register(
      String email, String password, String fullName, String role) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
