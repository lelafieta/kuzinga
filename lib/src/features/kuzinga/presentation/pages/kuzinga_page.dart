import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kuzinga/src/features/calendar/presentation/pages/calendar_page.dart';
import 'package:kuzinga/src/features/explore/presentation/pages/explore_page.dart';
import 'package:kuzinga/src/features/message/presentation/pages/message_page.dart';
import 'package:kuzinga/src/features/home/presentation/pages/home_page.dart';

import '../../../../configs/themes/color_palette.dart';
import '../../../../core/resources/icons/app_icons.dart';

class KuzingaPage extends StatefulWidget {
  const KuzingaPage({super.key});

  @override
  State<KuzingaPage> createState() => _KuzingaPageState();
}

class _KuzingaPageState extends State<KuzingaPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w600,
  );
  static const List<Widget> _widgetOptions = [
    HomePage(),
    MessagePage(),
    CalendarPage(),
    ExplorePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      backgroundColor: Colors.white,
      bottomNavigationBar: CustomNavigationBar(
        iconSize: 30.0,
        selectedColor: Color(0xff040307),
        strokeColor: Color(0x30040307),
        unSelectedColor: Color(0xffacacac),
        backgroundColor: Colors.white,
        items: [
          CustomNavigationBarItem(
            icon: (_selectedIndex == 0)
                ? SvgPicture.asset(
                    AppIcons.houseBlankBold,
                    color: AppColors.secondColor,
                  )
                : SvgPicture.asset(
                    AppIcons.houseBlank,
                    color: AppColors.secondColor,
                  ),
          ),
          CustomNavigationBarItem(
            icon: (_selectedIndex == 1)
                ? SvgPicture.asset(
                    AppIcons.chatBold,
                    color: AppColors.secondColor,
                  )
                : SvgPicture.asset(
                    AppIcons.chat,
                    color: AppColors.secondColor,
                  ),
          ),
          CustomNavigationBarItem(
            icon: (_selectedIndex == 2)
                ? SvgPicture.asset(
                    AppIcons.calendarDaysBold,
                    color: AppColors.secondColor,
                  )
                : SvgPicture.asset(
                    AppIcons.calendarDays,
                    color: AppColors.secondColor,
                  ),
          ),
          CustomNavigationBarItem(
            icon: (_selectedIndex == 3)
                ? SvgPicture.asset(
                    AppIcons.exploreBold,
                    color: AppColors.secondColor,
                  )
                : SvgPicture.asset(
                    AppIcons.explore,
                    color: AppColors.secondColor,
                  ),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
