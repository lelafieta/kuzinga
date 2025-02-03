import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

import '../configs/routes/route_manager.dart';
import '../configs/themes/theme.dart';

class KuzingaApp extends StatelessWidget {
  const KuzingaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      child: MaterialApp(
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.lightTheme,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteManager.onGenerateRoute,
      ),
    );
  }
}
