import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../configs/routes/routes.dart';
import '../../../../../configs/themes/color_palette.dart';
import '../../../../../core/resources/icons/app_icons.dart';
import '../../../../../core/strings/app_strings.dart';
import '../../../../../core/utils/app_values.dart';
import '../widgets/login_form_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BounceInUp(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: AppValues.s100,
                  ),
                  const Text(
                    AppStrings.wellcomeTo,
                    style: TextStyle(
                      fontSize: AppValues.s30,
                      fontWeight: FontWeight.bold,
                      color: AppColors.secondColor,
                    ),
                  ),
                  const SizedBox(
                    height: AppValues.s20,
                  ),
                  const Text(AppStrings.stayConnected),
                  const SizedBox(
                    height: AppValues.s20,
                  ),
                  FormBuilder(
                    child: Column(
                      children: [
                        LoginFormWidget(
                          hintText: AppStrings.email,
                          name: "email",
                          controller: emailController,
                          icon: AppIcons.at,
                        ),
                        const SizedBox(
                          height: AppValues.s14,
                        ),
                        LoginFormWidget(
                          hintText: AppStrings.password,
                          name: "password",
                          controller: passwordController,
                          icon: AppIcons.lock,
                        ),
                        const SizedBox(
                          height: AppValues.s14,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.check_box_outline_blank_outlined,
                                  color: AppColors.textColor,
                                ),
                                SizedBox(
                                  width: AppValues.s5,
                                ),
                                Text(AppStrings.rememberMe),
                              ],
                            ),
                            Text(AppStrings.forgotYourPassword),
                          ],
                        ),
                        const SizedBox(
                          height: AppValues.s22,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(AppRoutes.kuslaRoute);
                          },
                          child: const Text(AppStrings.login),
                        ),
                        const SizedBox(
                          height: AppValues.s22,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: AppStrings.dontHaveACcount,
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              TextSpan(
                                text: AppStrings.login,
                                style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontSize,
                                  fontFamily: AppStrings.fontFamily,
                                  color: AppColors.secondColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
