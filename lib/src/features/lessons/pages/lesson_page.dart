import 'package:animate_do/animate_do.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kuzinga/src/core/resources/icons/app_icons.dart';
import 'package:kuzinga/src/core/utils/app_values.dart';

import '../../../configs/themes/color_palette.dart';
import '../widgets/lesson_tab_first_widget.dart';
import '../widgets/lesson_tab_second_widget.dart';
import '../widgets/lesson_tab_third_widget.dart';

class LessonPage extends StatefulWidget {
  const LessonPage({super.key});

  @override
  State<LessonPage> createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> {
  int indexTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        title: const Text(
          "Inglês",
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AppIcons.download,
              width: AppValues.s20,
            ),
          ),
        ],
      ),
      body: FadeIn(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(AppValues.s15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Por: Lela Fieta",
                    style: TextStyle(
                        fontSize: AppValues.s15, color: Colors.black87),
                  ),
                  SvgPicture.asset(AppIcons.chat),
                ],
              ),
            ),
            Expanded(
              child: ContainedTabBarView(
                tabs: [
                  Text(
                    'Stream',
                    style: (indexTab == 0)
                        ? const TextStyle(color: AppColors.secondColor)
                        : const TextStyle(color: AppColors.textColor),
                  ),
                  Text(
                    'Notes',
                    style: (indexTab == 1)
                        ? const TextStyle(color: AppColors.secondColor)
                        : const TextStyle(color: AppColors.textColor),
                  ),
                  Text(
                    'Tarefas',
                    style: (indexTab == 1)
                        ? const TextStyle(color: AppColors.secondColor)
                        : const TextStyle(color: AppColors.textColor),
                  ),
                ],
                views: const [
                  LessonTabFirstWidget(),
                  LessonTabSecondWidget(),
                  LessonTabThirdWidget(),
                ],
                onChange: (index) => setState(() {
                  indexTab = index;
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
