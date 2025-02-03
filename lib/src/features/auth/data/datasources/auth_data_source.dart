import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:kuzinga/src/core/utils/app_utilis.dart';
import 'package:kuzinga/src/features/auth/data/datasources/i_auth_data_source.dart';
import 'package:kuzinga/src/features/auth/domain/entities/user_entity.dart';

class AuthDataSource extends IAuthDataSource {
  final FirebaseFirestore firebaseFirestore;
  final FirebaseAuth firebaseAuth;
  final FirebaseStorage firebaseStorage;

  AuthDataSource(
      {required this.firebaseFirestore,
      required this.firebaseAuth,
      required this.firebaseStorage});

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
      if (e.code == "user-not-found") {
        AppUtilis.toastError("user not found");
      } else if (e.code == "wrong-password") {
        AppUtilis.toastError("Invalid email or password");
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
