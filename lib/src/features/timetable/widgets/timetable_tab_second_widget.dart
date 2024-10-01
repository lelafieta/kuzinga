import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../configs/themes/color_palette.dart';
import '../../../core/resources/icons/app_icons.dart';
import '../../../core/utils/app_values.dart';
import '../../auth/login/data/datas.dart';

class TimetableTabSecondWidget extends StatelessWidget {
  const TimetableTabSecondWidget({super.key});

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
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: AppValues.s10),
                    decoration: BoxDecoration(
                        color: AppColors.secondColor.withOpacity(.1),
                        borderRadius: BorderRadius.circular(AppValues.s10)),
                    child: Table(
                      border: TableBorder.all(
                          color: AppColors.secondColor,
                          width: 2,
                          borderRadius: BorderRadius.circular(AppValues.s10)),
                      children: [
                        TableRow(children: [
                          CustomCell(text: 'Disciplinas', isFirstRow: true),
                          CustomCell(text: 'Notas', isFirstRow: true),
                          CustomCell(text: 'Resultados', isFirstRow: true),
                        ]),
                        TableRow(children: [
                          CustomCell(text: 'Matemática', isFirstColumn: true),
                          CustomCell(text: '18'),
                          CustomCell(text: 'Aprovado'),
                        ]),
                        TableRow(children: [
                          CustomCell(text: 'História', isFirstColumn: true),
                          CustomCell(text: '19'),
                          CustomCell(text: 'Aprovado'),
                        ]),
                        TableRow(children: [
                          CustomCell(text: 'Informática', isFirstColumn: true),
                          CustomCell(text: '20'),
                          CustomCell(text: 'Aprovado'),
                        ]),
                        TableRow(children: [
                          CustomCell(text: 'Física', isFirstColumn: true),
                          CustomCell(text: '16'),
                          CustomCell(text: 'Aprovado'),
                        ]),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: AppValues.s15,
                  ),
                  Text(
                    "Classificação Geral",
                    style: Theme.of(context).appBarTheme.titleTextStyle,
                  ),
                  const SizedBox(
                    height: AppValues.s15,
                  ),
                  Center(
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(AppValues.s100),
                        child: Container(
                          width: AppValues.s80,
                          height: AppValues.s80,
                          color: AppColors.strokeColor,
                          child: DashedCircularProgressBar.aspectRatio(
                            aspectRatio: 1,
                            valueNotifier: ValueNotifier(100),
                            progress: 75,
                            startAngle: 225,
                            sweepAngle: 270,
                            foregroundColor: Colors.teal,
                            backgroundColor: AppColors.grey.withOpacity(.2),
                            foregroundStrokeWidth: 5,
                            backgroundStrokeWidth: 5,
                            animation: true,
                            seekSize: 2,
                            seekColor: const Color(0xffeeeeee),
                            child: Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    '75%',
                                    style: const TextStyle(
                                      color: AppColors.secondColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: AppValues.s16,
                                    ),
                                  ),
                                  // Text(
                                  //   'Accuracy',
                                  //   style: const TextStyle(
                                  //       color:
                                  //           Color(0xffeeeeee),
                                  //       fontWeight:
                                  //           FontWeight.w400,
                                  //       fontSize: 16),
                                  // ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppValues.s15,
                  ),
                  const SizedBox(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              "Comportamento",
                              textAlign: TextAlign.end,
                            ),
                          ),
                          SizedBox(
                            width: AppValues.s10,
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Icon(Icons.star, color: Colors.orange),
                                Icon(Icons.star, color: Colors.orange),
                                Icon(Icons.star, color: Colors.orange),
                                Icon(Icons.star, color: Colors.orange),
                                Icon(Icons.star, color: AppColors.strokeColor),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: AppValues.s10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              "Trabalhos",
                              textAlign: TextAlign.end,
                            ),
                          ),
                          SizedBox(
                            width: AppValues.s10,
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Icon(Icons.star, color: Colors.orange),
                                Icon(Icons.star, color: Colors.orange),
                                Icon(Icons.star, color: Colors.orange),
                                Icon(Icons.star, color: AppColors.strokeColor),
                                Icon(Icons.star, color: AppColors.strokeColor),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: AppValues.s10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              "Aceduidade",
                              textAlign: TextAlign.end,
                            ),
                          ),
                          SizedBox(
                            width: AppValues.s10,
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Icon(Icons.star, color: Colors.orange),
                                Icon(Icons.star, color: Colors.orange),
                                Icon(Icons.star, color: AppColors.strokeColor),
                                Icon(Icons.star, color: AppColors.strokeColor),
                                Icon(Icons.star, color: AppColors.strokeColor),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ))
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
