import 'package:animate_do/animate_do.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kuzinga/src/core/resources/icons/app_icons.dart';
import 'package:kuzinga/src/core/utils/app_values.dart';

import '../../../configs/themes/color_palette.dart';
import '../../../core/resources/images/app_images.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppValues.s15,
              vertical: AppValues.s15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hoje",
                  style: Theme.of(context).appBarTheme.titleTextStyle,
                ),
                ListView.separated(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Container(
                        width: AppValues.s40,
                        height: AppValues.s40,
                        //color: Colors.red,
                        child: Image.asset(AppImages.book),
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
                const SizedBox(
                  height: AppValues.s15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
