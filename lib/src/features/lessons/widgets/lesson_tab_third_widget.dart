import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../configs/themes/color_palette.dart';
import '../../../core/resources/icons/app_icons.dart';
import '../../../core/resources/images/app_images.dart';
import '../../../core/utils/app_values.dart';
import '../../auth/login/data/datas.dart';

class LessonTabThirdWidget extends StatelessWidget {
  const LessonTabThirdWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                            child: Image.asset(AppImages.sketchbook),
                          ),
                          title: const Text(
                            "Criar um algorítmo de 1 a 10",
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
      ],
    );
  }
}

class CustomCell extends StatelessWidget {
  final String text;
  final bool isFirstRow;
  final bool isFirstColumn;

  const CustomCell({
    required this.text,
    this.isFirstRow = false,
    this.isFirstColumn = false,
  });

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = (isFirstRow || isFirstColumn)
        ? TextStyle(color: AppColors.secondColor, fontWeight: FontWeight.w600)
        : TextStyle(
            color: Colors.black87,
          );

    return Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
