import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kuzinga/src/core/resources/icons/app_icons.dart';
import 'package:kuzinga/src/core/utils/app_values.dart';
import 'package:kuzinga/src/features/auth/data/datas.dart';

import '../../../../configs/themes/color_palette.dart';

class UserOptionsPage extends StatelessWidget {
  const UserOptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BounceInDown(
        child: Container(
          height: double.infinity,
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  width: double.infinity,
                  height: AppValues.s250,
                  color: AppColors.secondColor.withOpacity(.3),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(AppValues.s50),
                          child: Image.network(
                            datas.elementAt(3).profileImage,
                            width: AppValues.s100,
                            height: AppValues.s100,
                          ),
                        ),
                        const SizedBox(
                          height: AppValues.s10,
                        ),
                        const Text(
                          "LINGARD A",
                          style: TextStyle(
                            fontSize: AppValues.s16,
                            fontWeight: FontWeight.bold,
                            color: AppColors.secondColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height - 220,
                  padding: EdgeInsets.all(AppValues.s10),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(AppValues.s40),
                      topRight: Radius.circular(AppValues.s40),
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: AppColors.blackColor.withOpacity(.4),
                      ),
                    ],
                  ),
                  child: Column(children: [
                    ListTile(
                      horizontalTitleGap: 0,
                      leading: SvgPicture.asset(
                        AppIcons.clipboardUser,
                        color: AppColors.secondColor,
                      ),
                      title: Text("Perfil do estudante"),
                    ),
                    ListTile(
                      horizontalTitleGap: 0,
                      leading: SvgPicture.asset(
                        AppIcons.calendarDaysBold,
                        color: AppColors.secondColor,
                      ),
                      title: Text("Calendário"),
                    ),
                    ListTile(
                      horizontalTitleGap: 0,
                      leading: SvgPicture.asset(
                        AppIcons.settings,
                        width: AppValues.s24,
                        color: AppColors.secondColor,
                      ),
                      title: Text("Settings"),
                    ),
                    ListTile(
                      horizontalTitleGap: 0,
                      leading: SvgPicture.asset(
                        AppIcons.phoneFlip,
                        color: AppColors.secondColor,
                      ),
                      title: Text("Ligar para nós"),
                    ),
                    ListTile(
                      horizontalTitleGap: 0,
                      leading: SvgPicture.asset(
                        AppIcons.exit,
                        width: AppValues.s24,
                        color: AppColors.secondColor,
                      ),
                      title: Text("Sair"),
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
