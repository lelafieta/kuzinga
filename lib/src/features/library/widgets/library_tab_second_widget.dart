import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kuzinga/src/core/resources/icons/app_icons.dart';

import '../../../configs/themes/color_palette.dart';
import '../../../core/resources/images/app_images.dart';
import '../../../core/utils/app_values.dart';
import '../../auth/data/datas.dart';

class LibraryTabSecondWidget extends StatefulWidget {
  const LibraryTabSecondWidget({super.key});

  @override
  State<LibraryTabSecondWidget> createState() => _LibraryTabSecondWidgetState();
}

class _LibraryTabSecondWidgetState extends State<LibraryTabSecondWidget> {
  final List<String> subjects = [
    'Matemática',
    'Português',
    'História',
    'Geografia',
    'Ciências',
    'Inglês',
    'Educação Física',
    'Artes',
    'Física',
    'Química',
  ];

  final List<String> books = [
    'Fundamentos de programação',
    'Clean Code & Clean Archtecture',
    'MDC',
    'Demindovitch',
    'Berma',
    'Entender o The To be',
    'Educação Física',
    'Artes',
    'Física',
    'Química',
  ];

  final List<Color> colors = [
    Colors.red.withOpacity(0.3),
    Colors.green.withOpacity(0.3),
    Colors.blue.withOpacity(0.3),
    Colors.orange.withOpacity(0.3),
    Colors.purple.withOpacity(0.3),
    Colors.teal.withOpacity(0.3),
    Colors.yellow.withOpacity(0.3),
    Colors.pink.withOpacity(0.3),
    Colors.cyan.withOpacity(0.3),
    Colors.lime.withOpacity(0.3),
  ];

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
        Container(
          width: double.infinity,
          height: AppValues.s50,
          //color: Colors.orange,
          padding: const EdgeInsets.symmetric(
            //horizontal: AppValues.s15,
            vertical: AppValues.s5,
          ),
          child: ListView.separated(
            itemCount: subjects.length,
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: AppValues.s15),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                width: 150,
                padding: EdgeInsets.all(AppValues.s10),
                decoration: BoxDecoration(
                  color: colors[index % colors.length],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    subjects[index],
                    style: TextStyle(color: AppColors.secondColor),
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: 10,
              );
            },
          ),
        ),
        // SizedBox(
        //   height: AppValues.s10,
        // ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppValues.s10),
            ),
            child: ListView.separated(
              itemCount: fakeLessons.length,
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              // padding: const EdgeInsets.symmetric(
              //     horizontal: AppValues.s15, vertical: AppValues.s10),
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(AppValues.s15),
                  child: Row(children: [
                    Expanded(
                      child: Row(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: AppValues.s60,
                                height: AppValues.s80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    AppValues.s5,
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(AppValues.s10),
                                  child: Image.asset(
                                    municipios.elementAt(index).image,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: AppValues.s10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    books.elementAt(index),
                                    style: TextStyle(
                                      color: AppColors.secondColor,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "Lingard",
                                    style: TextStyle(color: Colors.black87),
                                  ),
                                  const SizedBox(
                                    height: AppValues.s10,
                                  ),
                                  const Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: AppColors.secondColor,
                                        size: AppValues.s16,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: AppColors.secondColor,
                                        size: AppValues.s16,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: AppColors.secondColor,
                                        size: AppValues.s16,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: AppColors.secondColor,
                                        size: AppValues.s16,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.grey,
                                        size: AppValues.s16,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SvgPicture.asset(
                      AppIcons.download,
                      width: AppValues.s20,
                    ),
                  ]),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 20,
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
