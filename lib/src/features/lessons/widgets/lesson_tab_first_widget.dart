import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kuzinga/src/core/resources/icons/app_icons.dart';

import '../../../configs/themes/color_palette.dart';
import '../../../core/resources/images/app_images.dart';
import '../../../core/utils/app_values.dart';
import '../../auth/data/datas.dart';

class LessonTabFirstWidget extends StatelessWidget {
  const LessonTabFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(
                horizontal: AppValues.s15, vertical: AppValues.s10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppValues.s10),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hoje",
                    style: Theme.of(context).appBarTheme.titleTextStyle,
                  ),
                  const SizedBox(
                    height: AppValues.s15,
                  ),
                  Container(
                    child: ListView.separated(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Container(
                            width: AppValues.s40,
                            height: AppValues.s40,
                            //color: Colors.red,
                            child: Image.asset(AppImages.speach),
                          ),
                          title: const Text(
                            "Traga o o seu nootbook amanhã",
                            style: TextStyle(),
                          ),
                          subtitle: const Text(
                            "28 Julho",
                            style: TextStyle(),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: AppValues.s10,
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: AppValues.s15,
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(),
      ],
    );
  }
}
