import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:kuzinga/src/configs/routes/routes.dart';
import 'package:kuzinga/src/core/utils/app_values.dart';

import '../../../../configs/themes/color_palette.dart';
import '../../../../core/resources/icons/app_icons.dart';
import '../../../auth/data/datas.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  final List<Menu> items = [
    Menu(
      title: "Gestão de Instituições",
      subtitle: "subtitle",
      icon: AppIcons.school,
      iconColor: const Color(0xFF1565C0),
      color: const Color(0xFFD8EFFF),
      onTap: () {
        Get.toNamed(AppRoutes.instituitionRoute);
      },
    ),
    Menu(
      title: "Gestão de Administradores",
      subtitle: "subtitle",
      icon: AppIcons.userKey,
      iconColor: const Color(0xFFD81B60),
      color: const Color(0xFFFCE4EC),
      onTap: () {},
    ),
    Menu(
      title: "Gestão de Papeis",
      subtitle: "subtitle",
      icon: AppIcons.userTrust,
      iconColor: const Color(0xFFF9A825),
      color: const Color(0xFFFFF4DB),
      onTap: () {},
    ),
    Menu(
      title: "Gestão de Pacotes",
      subtitle: "subtitle",
      icon: AppIcons.walletArrow,
      iconColor: const Color(0xFF7E57C2),
      color: const Color(0xFFEDE7F6),
      onTap: () {},
    ),
    Menu(
      title: "Broadcast & Notificações",
      subtitle: "subtitle",
      icon: AppIcons.commentAltDots,
      iconColor: const Color(0xFFF57F17),
      color: const Color(0xFFFDFDEA),
      onTap: () {},
    ),
    Menu(
      title: "Estatística",
      subtitle: "subtitle",
      icon: AppIcons.chartSimpleHorizontal,
      iconColor: const Color(0xFF2E7D32),
      color: const Color(0xFFE7F8E7),
      onTap: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Administrador",
              style: TextStyle(
                fontSize: AppValues.s12,
                fontWeight: FontWeight.normal,
                color: AppColors.textColor,
              ),
            ),
            Text("Olá, LINGARD"),
          ],
        ),
        shape: Border(),
        actions: [
          Container(
            height: AppValues.s50,
            padding: const EdgeInsets.only(right: AppValues.s16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: AppValues.s40,
                  height: AppValues.s40,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.5, color: AppColors.textColor),
                    borderRadius: BorderRadius.circular(AppValues.s10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppValues.s8),
                    child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        AppIcons.bell,
                        width: AppValues.s18,
                        color: AppColors.textColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: AppValues.s10,
                ),
                SizedBox(
                  width: AppValues.s40,
                  height: AppValues.s40,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppValues.s8),
                    child: CachedNetworkImage(
                      imageUrl: datas.elementAt(0).profileImage,
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                      fit: BoxFit
                          .cover, // Para garantir que a imagem preencha o contêiner
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: AppValues.s16),
            child: Text(
              "Menu",
              style: TextStyle(fontSize: AppValues.s16),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // 2 colunas
                crossAxisSpacing: AppValues.s18,
                mainAxisSpacing: AppValues.s18,
                childAspectRatio: 1.0, // Mantém um formato quadrado
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final menu = items.elementAt(index);
                return InkWell(
                  onTap: menu.onTap,
                  child: Container(
                    padding: const EdgeInsets.all(AppValues.s16),
                    decoration: BoxDecoration(
                      color: menu.color.withOpacity(.7),
                      borderRadius: BorderRadius.circular(AppValues.s10),
                      // border: Border.all(
                      //   width: AppValues.s1,
                      //   color: AppColors.strokeColor,
                      // ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: SvgPicture.asset(
                            menu.icon,
                            width: AppValues.s28,
                            color: menu.iconColor,
                          ),
                        ),
                        const SizedBox(
                          height: AppValues.s10,
                        ),
                        Center(
                          child: Text(
                            menu.title,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: menu.iconColor,
                                  fontWeight: FontWeight.bold,
                                ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Menu {
  final String title;
  final String subtitle;
  final String icon;
  final Color color;
  final Color iconColor;
  final VoidCallback? onTap;

  Menu(
      {required this.title,
      required this.subtitle,
      required this.icon,
      required this.color,
      required this.iconColor,
      required this.onTap});
}
