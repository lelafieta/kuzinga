import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
  final List<String> items = [
    "Instituições",
    "Administradores",
    "Papeis",
    "Pacotes",
    "Broadcast & Notificações",
    "Gráficos",
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
              padding: EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // 2 colunas
                crossAxisSpacing: AppValues.s18,
                mainAxisSpacing: AppValues.s18,
                childAspectRatio: 1.0, // Mantém um formato quadrado
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    // color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(AppValues.s10),
                    border: Border.all(
                      width: AppValues.s1,
                      color: AppColors.strokeColor,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: SvgPicture.asset(
                          AppIcons.apple,
                          width: AppValues.s28,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      const SizedBox(
                        height: AppValues.s10,
                      ),
                      Center(
                        child: Text(
                          "Gestão",
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: AppColors.secondColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      Center(
                          child: Text(
                        "de Instituições",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: AppColors.secondColor,
                              fontWeight: FontWeight.w600,
                            ),
                      )),
                    ],
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
