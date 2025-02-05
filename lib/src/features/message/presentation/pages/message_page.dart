import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../configs/routes/routes.dart';
import '../../../../configs/themes/color_palette.dart';
import '../../../../core/resources/icons/app_icons.dart';
import '../../../../core/strings/app_strings.dart';
import '../../../../core/utils/app_values.dart';
import '../../../auth/data/datas.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          AppStrings.message,
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: FadeIn(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: AppValues.s50,
              //color: Colors.orange,
              padding: const EdgeInsets.symmetric(
                horizontal: AppValues.s15,
                vertical: AppValues.s5,
              ),
              child: FormBuilderTextField(
                name: "pesquisa",
                decoration: const InputDecoration(
                  hintText: "Pesquisar",
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  fillColor: AppColors.whiteColor,
                  enabledBorder: OutlineInputBorder(
                    //borderSide: BorderSide.none,
                    borderSide: BorderSide(color: AppColors.strokeColor),
                    borderRadius: BorderRadius.all(
                      Radius.circular(AppValues.s5),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    //borderSide: BorderSide.none,
                    borderSide: BorderSide(color: AppColors.strokeColor),
                    borderRadius: BorderRadius.all(
                      Radius.circular(AppValues.s5),
                    ),
                  ),
                  filled: true,
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: datas.length,
                itemBuilder: (context, index) {
                  final data = datas.elementAt(index);
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(AppRoutes.chatRoute);
                    },
                    child: ListTile(
                      minLeadingWidth: 0,
                      minVerticalPadding: 0,
                      horizontalTitleGap: AppValues.s10,
                      titleAlignment: ListTileTitleAlignment.center,
                      leading: SizedBox(
                        width: AppValues.s40,
                        height: AppValues.s40,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(AppValues.s50),
                          child: CachedNetworkImage(
                            imageUrl: datas.elementAt(index).profileImage,
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                            fit: BoxFit
                                .cover, // Para garantir que a imagem preencha o contêiner
                          ),
                        ),
                      ),
                      title: Text(
                        data.displayName,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColors.secondColor,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: Text(
                        data.bio,
                        overflow: TextOverflow.ellipsis,
                      ),
                      trailing: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "a 5 min",
                            style: TextStyle(
                              fontSize: AppValues.s10,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            height: AppValues.s10,
                          ),
                          SvgPicture.asset(
                            AppIcons.checkDouble,
                            width: AppValues.s10,
                            color: AppColors.grey,
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    height: 0,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
