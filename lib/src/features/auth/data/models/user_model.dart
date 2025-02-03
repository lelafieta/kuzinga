import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel(
      {required super.userId,
      required super.email,
      required super.fullName,
      required super.role});

  factory UserModel.fromSnapshot(DocumentSnapshot snapshot) {
    return UserModel(
      userId: snapshot.get('userId'),
      email: snapshot.get('email'),
      fullName: snapshot.get('fullName'),
      role: snapshot.get('role'),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'email': email,
      'fullName': fullName,
      'role': role,
    };
  }
}
