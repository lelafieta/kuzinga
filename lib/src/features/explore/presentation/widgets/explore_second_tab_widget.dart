import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kuzinga/src/core/resources/icons/app_icons.dart';
import 'package:kuzinga/src/core/resources/images/app_images.dart';

import '../../../../configs/themes/color_palette.dart';
import '../../../../core/utils/app_values.dart';
import '../../../auth/login/data/datas.dart';

class ExploreSecondTabWidget extends StatelessWidget {
  const ExploreSecondTabWidget({super.key});

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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: AppValues.s15,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppValues.s15),
                  child: Text(
                    "Medicina",
                    style: TextStyle(
                      color: AppColors.secondColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: AppValues.s200,
                  child: ListView.separated(
                    itemCount: municipios.length,
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    padding: const EdgeInsets.all(AppValues.s15),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final data = municipios.elementAt(index);
                      return Container(
                        width: AppValues.s150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppValues.s10),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: AppValues.s120,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(AppValues.s10),
                                color: Colors.red.withOpacity(.4),
                              ),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(AppValues.s10),
                                child: Image.asset(
                                  data.image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                                child: Text(
                              datas.elementAt(0).bio,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            )),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 20,
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: AppValues.s15,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppValues.s15),
                  child: Text(
                    "Enfermágem",
                    style: TextStyle(
                      color: AppColors.secondColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: AppValues.s200,
                  child: ListView.separated(
                    itemCount: municipios.length,
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    padding: const EdgeInsets.all(AppValues.s15),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final data = municipios.elementAt(index);
                      return Container(
                        width: AppValues.s150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppValues.s10),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: AppValues.s120,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(AppValues.s10),
                                color: Colors.red.withOpacity(.4),
                              ),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(AppValues.s10),
                                child: Image.asset(
                                  data.image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                                child: Text(
                              datas.elementAt(0).bio,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            )),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 20,
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: AppValues.s15,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppValues.s15),
                  child: Text(
                    "Computação",
                    style: TextStyle(
                      color: AppColors.secondColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: AppValues.s200,
                  child: ListView.separated(
                    itemCount: municipios.length,
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    padding: const EdgeInsets.all(AppValues.s15),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final data = municipios.elementAt(index);
                      return Container(
                        width: AppValues.s150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppValues.s10),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: AppValues.s120,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(AppValues.s10),
                                color: Colors.red.withOpacity(.4),
                              ),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(AppValues.s10),
                                child: Image.asset(
                                  data.image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                                child: Text(
                              datas.elementAt(0).bio,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            )),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 20,
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: AppValues.s15,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppValues.s15),
                  child: Text(
                    "Matematica",
                    style: TextStyle(
                      color: AppColors.secondColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: AppValues.s200,
                  child: ListView.separated(
                    itemCount: municipios.length,
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    padding: const EdgeInsets.all(AppValues.s15),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final data = municipios.elementAt(index);
                      return Container(
                        width: AppValues.s150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppValues.s10),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: AppValues.s120,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(AppValues.s10),
                                color: Colors.red.withOpacity(.4),
                              ),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(AppValues.s10),
                                child: Image.asset(
                                  data.image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                                child: Text(
                              datas.elementAt(0).bio,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            )),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 20,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(),
      ],
    );
  }
}
