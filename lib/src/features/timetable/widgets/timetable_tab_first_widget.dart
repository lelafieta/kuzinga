import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kuzinga/src/core/resources/icons/app_icons.dart';

import '../../../configs/themes/color_palette.dart';
import '../../../core/resources/images/app_images.dart';
import '../../../core/utils/app_values.dart';
import '../../auth/data/datas.dart';

class TimetableTabFirstWidget extends StatelessWidget {
  const TimetableTabFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "1º Trimestre",
                        style: Theme.of(context).appBarTheme.titleTextStyle,
                      ),
                      const SizedBox(
                        width: AppValues.s5,
                      ),
                      SvgPicture.asset(
                        AppIcons.caretDown,
                        color: AppColors.secondColor,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: AppValues.s15,
                  ),
                  const Text(
                    "Agosto",
                    style: TextStyle(color: Colors.black87),
                  ),
                  const SizedBox(
                    height: AppValues.s10,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: AppValues.s10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: AppValues.s60,
                          height: AppValues.s60,
                          decoration: BoxDecoration(
                            color:
                                fakeLessons.elementAt(0).color.withOpacity(.1),
                            borderRadius: BorderRadius.circular(AppValues.s50),
                          ),
                          child: const Center(
                            child: Text(
                              "29",
                              style: TextStyle(
                                color: AppColors.secondColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: AppValues.s10,
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(
                              AppValues.s10,
                            ),
                            height: AppValues.s60,
                            decoration: BoxDecoration(
                              color: fakeLessons
                                  .elementAt(0)
                                  .color
                                  .withOpacity(.1),
                              borderRadius: BorderRadius.circular(AppValues.s5),
                            ),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Inglês",
                                  style: TextStyle(
                                    fontSize: AppValues.s14,
                                    color: AppColors.secondColor,
                                  ),
                                ),
                                Text(
                                  "10:00 - 12:00",
                                  style: TextStyle(
                                    fontSize: AppValues.s12,
                                    color: AppColors.secondColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: AppValues.s15,
                  ),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: AppValues.s10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: AppValues.s60,
                          height: AppValues.s60,
                          decoration: BoxDecoration(
                            color:
                                fakeLessons.elementAt(1).color.withOpacity(.1),
                            borderRadius: BorderRadius.circular(AppValues.s50),
                          ),
                          child: const Center(
                            child: Text(
                              "30",
                              style: TextStyle(
                                color: AppColors.secondColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: AppValues.s10,
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(
                              AppValues.s10,
                            ),
                            height: AppValues.s60,
                            decoration: BoxDecoration(
                              color: fakeLessons
                                  .elementAt(1)
                                  .color
                                  .withOpacity(.1),
                              borderRadius: BorderRadius.circular(AppValues.s5),
                            ),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Matemática",
                                  style: TextStyle(
                                    fontSize: AppValues.s14,
                                    color: AppColors.secondColor,
                                  ),
                                ),
                                Text(
                                  "08:00 - 12:00",
                                  style: TextStyle(
                                    fontSize: AppValues.s12,
                                    color: AppColors.secondColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: AppValues.s15,
                  ),
                  const Text(
                    "Setembro",
                    style: TextStyle(color: Colors.black87),
                  ),
                  const SizedBox(
                    height: AppValues.s10,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: AppValues.s10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: AppValues.s60,
                          height: AppValues.s60,
                          decoration: BoxDecoration(
                            color:
                                fakeLessons.elementAt(3).color.withOpacity(.1),
                            borderRadius: BorderRadius.circular(AppValues.s50),
                          ),
                          child: const Center(
                            child: Text(
                              "01",
                              style: TextStyle(
                                color: AppColors.secondColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: AppValues.s10,
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(
                              AppValues.s10,
                            ),
                            height: AppValues.s60,
                            decoration: BoxDecoration(
                              color: fakeLessons
                                  .elementAt(3)
                                  .color
                                  .withOpacity(.1),
                              borderRadius: BorderRadius.circular(AppValues.s5),
                            ),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Enfermágem",
                                  style: TextStyle(
                                    fontSize: AppValues.s14,
                                    color: AppColors.secondColor,
                                  ),
                                ),
                                Text(
                                  "09:00 - 12:00",
                                  style: TextStyle(
                                    fontSize: AppValues.s12,
                                    color: AppColors.secondColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: AppValues.s15,
                  ),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: AppValues.s10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: AppValues.s60,
                          height: AppValues.s60,
                          decoration: BoxDecoration(
                            color:
                                fakeLessons.elementAt(2).color.withOpacity(.1),
                            borderRadius: BorderRadius.circular(AppValues.s50),
                          ),
                          child: const Center(
                            child: Text(
                              "02",
                              style: TextStyle(
                                color: AppColors.secondColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: AppValues.s10,
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(
                              AppValues.s10,
                            ),
                            height: AppValues.s60,
                            decoration: BoxDecoration(
                              color: fakeLessons
                                  .elementAt(2)
                                  .color
                                  .withOpacity(.1),
                              borderRadius: BorderRadius.circular(AppValues.s5),
                            ),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Informática",
                                  style: TextStyle(
                                    fontSize: AppValues.s14,
                                    color: AppColors.secondColor,
                                  ),
                                ),
                                Text(
                                  "14:00 - 16:00",
                                  style: TextStyle(
                                    fontSize: AppValues.s12,
                                    color: AppColors.secondColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: AppValues.s15,
                  ),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: AppValues.s10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: AppValues.s60,
                          height: AppValues.s60,
                          decoration: BoxDecoration(
                            color:
                                fakeLessons.elementAt(4).color.withOpacity(.1),
                            borderRadius: BorderRadius.circular(AppValues.s50),
                          ),
                          child: const Center(
                            child: Text(
                              "03",
                              style: TextStyle(
                                color: AppColors.secondColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: AppValues.s10,
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(
                              AppValues.s10,
                            ),
                            height: AppValues.s60,
                            decoration: BoxDecoration(
                              color: fakeLessons
                                  .elementAt(4)
                                  .color
                                  .withOpacity(.1),
                              borderRadius: BorderRadius.circular(AppValues.s5),
                            ),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Física",
                                  style: TextStyle(
                                    fontSize: AppValues.s14,
                                    color: AppColors.secondColor,
                                  ),
                                ),
                                Text(
                                  "14:00 - 16:00",
                                  style: TextStyle(
                                    fontSize: AppValues.s12,
                                    color: AppColors.secondColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
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
