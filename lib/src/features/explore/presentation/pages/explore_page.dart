import 'package:animate_do/animate_do.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:kuzinga/src/features/explore/presentation/widgets/explore_first_tab_widget.dart';

import '../../../../configs/themes/color_palette.dart';
import '../../../../core/strings/app_strings.dart';
import '../../../../core/utils/app_values.dart';
import '../widgets/explore_second_tab_widget.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  int indexTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          AppStrings.explore,
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: FadeIn(
        child: ContainedTabBarView(
          tabs: [
            Text(
              'Quadro de Notícia',
              style: (indexTab == 0)
                  ? const TextStyle(color: AppColors.secondColor)
                  : const TextStyle(color: AppColors.textColor),
            ),
            Text(
              'Orientação Profissional',
              style: (indexTab == 1)
                  ? const TextStyle(color: AppColors.secondColor)
                  : const TextStyle(color: AppColors.textColor),
            ),
          ],
          views: const [
            ExploreFirstTabWidget(),
            ExploreSecondTabWidget(),
          ],
          onChange: (index) => setState(() {
            indexTab = index;
          }),
        ),
      ),
    );
  }
}
