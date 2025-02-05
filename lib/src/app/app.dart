import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:kuzinga/src/features/auth/presentation/cubit/auth/auth_cubit.dart';
import 'package:toastification/toastification.dart';

import '../configs/routes/route_manager.dart';
import '../configs/themes/theme.dart';
import 'di.dart' as di;

class KuzingaApp extends StatelessWidget {
  const KuzingaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => di.instance<AuthCubit>()),
      ],
      child: MaterialApp(
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.lightTheme,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteManager.onGenerateRoute,
        builder: EasyLoading.init(),
      ),
    );
  }
}
