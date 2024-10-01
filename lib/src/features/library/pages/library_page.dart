import 'package:animate_do/animate_do.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kuzinga/src/core/resources/icons/app_icons.dart';
import 'package:kuzinga/src/core/utils/app_values.dart';

import '../../../configs/themes/color_palette.dart';
import '../widgets/library_tab_first_widget.dart';
import '../widgets/library_tab_second_widget.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  int indexTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        title: const Text(
          "Biblioteca",
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
        child: ContainedTabBarView(
          tabs: [
            Text(
              'Livros',
              style: (indexTab == 0)
                  ? const TextStyle(color: AppColors.secondColor)
                  : const TextStyle(color: AppColors.textColor),
            ),
            Text(
              'Videos',
              style: (indexTab == 1)
                  ? const TextStyle(color: AppColors.secondColor)
                  : const TextStyle(color: AppColors.textColor),
            ),
          ],
          views: const [
            LibraryTabFirstWidget(),
            LibraryTabSecondWidget(),
          ],
          onChange: (index) => setState(() {
            indexTab = index;
          }),
        ),
      ),
    );
  }
}
