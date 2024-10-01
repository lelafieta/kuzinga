import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kuzinga/src/core/resources/icons/app_icons.dart';
import 'package:kuzinga/src/core/resources/images/app_images.dart';

import '../../../../configs/themes/color_palette.dart';
import '../../../../core/utils/app_values.dart';
import '../../../auth/login/data/datas.dart';

class ExploreFirstTabWidget extends StatelessWidget {
  const ExploreFirstTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  Radius.circular(AppValues.s10),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                //borderSide: BorderSide.none,
                borderSide: BorderSide(color: AppColors.strokeColor),
                borderRadius: BorderRadius.all(
                  Radius.circular(AppValues.s10),
                ),
              ),
              filled: true,
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(
                horizontal: AppValues.s15, vertical: AppValues.s10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppValues.s10),
            ),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: AppValues.s10,
                  mainAxisSpacing: AppValues.s10,
                  childAspectRatio: 1.3),
              itemCount: fakeNotices.length,
              itemBuilder: (context, index) {
                final lesson = fakeNotices.elementAt(index);
                return Container(
                  padding: const EdgeInsets.all(AppValues.s15),
                  decoration: BoxDecoration(
                    color: lesson.color.withOpacity(.1),
                    borderRadius: BorderRadius.circular(AppValues.s10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: AppValues.s50,
                              height: AppValues.s50,
                              padding: const EdgeInsets.all(AppValues.s5),
                              decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius:
                                    BorderRadius.circular(AppValues.s10),
                              ),
                              child: Image.asset(AppImages.news),
                            ),
                            const SizedBox(
                              height: AppValues.s10,
                            ),
                            Text(
                              lesson.description,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        Container(),
      ],
    );
  }
}
