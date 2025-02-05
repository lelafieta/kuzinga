import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kuzinga/src/features/auth/domain/usecases/login_usecase.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final LoginUseCase loginUseCase;

  AuthCubit({
    required this.loginUseCase,
  }) : super(AuthInitial());

  Future<void> signIn(String email, String password) async {
    emit(Authenticating());
    try {
      await loginUseCase.call(email, password);
      emit(Authenticated());
    } on SocketException catch (_) {
      emit(UnAuthenticated());
    } catch (_) {
      emit(UnAuthenticated());
    }
  }

  // Future<void> appStarted(BuildContext context) async {
  //   try {
  //     bool isSignIn = await isSignInUseCase.call();
  //     if (isSignIn == true) {
  //       final uid = await getCurrentUidUseCase.call();
  //       emit(Authenticated(uid: uid));
  //     } else {
  //       emit(UnAuthenticated());
  //     }
  //   } catch (_) {
  //     emit(UnAuthenticated());
  //   }
  // }

  // Future<void> loggedIn() async {
  //   try {
  //     final uid = await getCurrentUidUseCase.call();
  //     emit(Authenticated(uid: uid));
  //   } catch (_) {
  //     emit(UnAuthenticated());
  //   }
  // }

  // Future<void> loggedOut() async {
  //   try {
  //     await signOutUseCase.call();
  //     emit(UnAuthenticated());
  //   } catch (_) {
  //     emit(UnAuthenticated());
  //   }
  // }
}
