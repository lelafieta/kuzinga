import 'package:flutter/material.dart';
import 'package:kuzinga/src/configs/routes/routes.dart';
import 'package:kuzinga/src/core/utils/app_values.dart';

import '../../../../core/resources/images/app_images.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void goNext() async {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed(AppRoutes.loginRoute);
    });
  }

  @override
  void initState() {
    goNext();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              AppImages.icon,
              width: AppValues.s100,
            ),
          ),
        ],
      ),
    );
  }
}
