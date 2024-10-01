import 'package:animate_do/animate_do.dart';
import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../configs/themes/color_palette.dart';
import '../../../core/resources/icons/app_icons.dart';
import '../../../core/utils/app_values.dart';

class TimetableTablePage extends StatelessWidget {
  const TimetableTablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        title: const Text(
          "Tabela Horário",
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              //Navigator.pushNamed(context, AppRoutes.timetableTableRoute);
            },
            icon: SvgPicture.asset(
              AppIcons.download,
              width: AppValues.s20,
              color: AppColors.secondColor,
            ),
          ),
        ],
      ),
      body: FadeIn(
        child: Column(
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
                      const SizedBox(
                        height: AppValues.s15,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: AppValues.s10),
                        decoration: BoxDecoration(
                            color: AppColors.secondColor.withOpacity(.1),
                            borderRadius: BorderRadius.circular(AppValues.s10)),
                        child: Table(
                          border: TableBorder.all(
                              color: AppColors.secondColor,
                              width: 2,
                              borderRadius:
                                  BorderRadius.circular(AppValues.s10)),
                          children: const [
                            TableRow(
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(AppValues.s10),
                                  topRight: Radius.circular(AppValues.s10),
                                ),
                              ),
                              children: [
                                CustomCell(text: 'Hora', isFirstRow: true),
                                CustomCell(text: 'Seg', isFirstRow: true),
                                CustomCell(text: 'Ter', isFirstRow: true),
                                CustomCell(text: 'Qua', isFirstRow: true),
                                CustomCell(text: 'Qui', isFirstRow: true),
                                CustomCell(text: 'Sex', isFirstRow: true),
                              ],
                            ),
                            TableRow(
                              children: [
                                CustomCell(
                                  text: '09:00-10:10',
                                  isFirstColumn: true,
                                ),
                                CustomCell(text: 'Mat'),
                                CustomCell(text: 'Quim'),
                                CustomCell(text: 'Fis'),
                                CustomCell(text: 'Hist'),
                                CustomCell(text: 'Inf'),
                              ],
                            ),
                            TableRow(children: [
                              CustomCell(
                                  text: '09:00-10:10', isFirstColumn: true),
                              CustomCell(text: 'Mat'),
                              CustomCell(text: 'Quim'),
                              CustomCell(text: 'Fis'),
                              CustomCell(text: 'Hist'),
                              CustomCell(text: 'Inf'),
                            ]),
                            TableRow(children: [
                              CustomCell(
                                  text: '09:00-10:10', isFirstColumn: true),
                              CustomCell(text: 'Mat'),
                              CustomCell(text: 'Quim'),
                              CustomCell(text: 'Fis'),
                              CustomCell(text: 'Hist'),
                              CustomCell(text: 'Inf'),
                            ]),
                            TableRow(children: [
                              CustomCell(
                                  text: '09:00-10:10', isFirstColumn: true),
                              CustomCell(text: 'Mat'),
                              CustomCell(text: 'Quim'),
                              CustomCell(text: 'Fis'),
                              CustomCell(text: 'Hist'),
                              CustomCell(text: 'Inf'),
                            ]),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: AppValues.s15,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: AppValues.s10),
                        child: Table(
                          children: const [
                            TableRow(
                              children: [
                                CustomCell2(
                                    text: 'Disciplina', isFirstRow: true),
                                CustomCell2(
                                    text: 'Professor', isFirstRow: true),
                                CustomCell2(text: 'Horas', isFirstRow: true),
                              ],
                            ),
                            TableRow(
                              children: [
                                CustomCell2(
                                  text: 'Matemática',
                                  isFirstColumn: false,
                                ),
                                CustomCell2(text: 'Lela Fieta'),
                                CustomCell2(text: '7'),
                              ],
                            ),
                            TableRow(children: [
                              CustomCell2(text: 'Inglês', isFirstColumn: false),
                              CustomCell2(text: 'Pedro Epalanga'),
                              CustomCell2(text: '7'),
                            ]),
                            TableRow(children: [
                              CustomCell2(text: 'Física', isFirstColumn: false),
                              CustomCell2(text: 'Gunza Fernandes'),
                              CustomCell2(text: '7'),
                            ]),
                            TableRow(children: [
                              CustomCell2(
                                  text: 'Informática', isFirstColumn: false),
                              CustomCell2(text: 'Osório Palhais'),
                              CustomCell2(text: '7'),
                            ]),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}

class CustomCell2 extends StatelessWidget {
  final String text;
  final bool isFirstRow;
  final bool isFirstColumn;

  const CustomCell2({
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
          textAlign: TextAlign.center,
        ),
      ),
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
        ? TextStyle(
            color: AppColors.secondColor,
            fontWeight: FontWeight.w600,
            fontSize: AppValues.s12,
          )
        : TextStyle(
            color: Colors.black87,
            fontSize: AppValues.s12,
          );

    return Container(
      padding: EdgeInsets.all(8.0),
      //margin: EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        borderRadius: (isFirstColumn == true)
            ? BorderRadius.circular(0)
            : BorderRadius.circular(8),
        color: (isFirstColumn == true)
            ? AppColors.primaryColor.withOpacity(.3)
            : Colors.transparent,
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
