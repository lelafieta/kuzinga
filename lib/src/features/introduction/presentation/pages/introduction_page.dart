import 'package:flutter/material.dart';
import '../../../../configs/routes/routes.dart';
import '../../../../configs/themes/color_palette.dart';
import '../../../../core/resources/images/app_images.dart';
import '../../../../core/strings/app_strings.dart';
import '../../../../core/utils/app_values.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: Colors.red,
            image: DecorationImage(
              image: AssetImage(AppImages.serraDaLebaAngolaImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          bottom: 0,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Theme.of(context).colorScheme.secondary.withOpacity(.9),
                  Theme.of(context).colorScheme.primary,
                ],
              ),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(AppValues.s16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Center(
                    child: Text(
                      AppStrings.kusala,
                      style: TextStyle(
                        fontFamily: AppStrings.motterTekturaFontFamily,
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.w600,
                        fontSize: AppValues.s50,
                      ),
                    ),
                  ),
                  const Text(
                    AppStrings.findFriendWhileTravel,
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: AppValues.s14,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  const SizedBox(
                    height: AppValues.s22,
                  ),
                  const Text(
                    AppStrings.bigTextIntroduction,
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: AppValues.s16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: AppValues.s30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(AppRoutes.loginRoute);
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          const MaterialStatePropertyAll(AppColors.whiteColor),
                      foregroundColor: MaterialStatePropertyAll(
                        Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    child: const Text(AppStrings.continuar),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
