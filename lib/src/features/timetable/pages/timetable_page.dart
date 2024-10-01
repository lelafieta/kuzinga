import 'package:animate_do/animate_do.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_timeline_calendar/timeline/flutter_timeline_calendar.dart';
import 'package:flutter_timeline_calendar/timeline/provider/instance_provider.dart';
import 'package:kuzinga/src/configs/routes/routes.dart';
import 'package:kuzinga/src/core/resources/icons/app_icons.dart';
import 'package:kuzinga/src/core/strings/app_strings.dart';
import 'package:kuzinga/src/core/utils/app_values.dart';
import 'package:mobkit_calendar/mobkit_calendar.dart';

import '../../../configs/themes/color_palette.dart';
import '../../auth/login/data/datas.dart';
import '../widgets/timetable_tab_first_widget.dart';
import '../widgets/timetable_tab_second_widget.dart';
import '../widgets/timetable_tab_third_widget.dart';

class TimetablePage extends StatefulWidget {
  const TimetablePage({super.key});

  @override
  State<TimetablePage> createState() => _TimetablePageState();
}

class _TimetablePageState extends State<TimetablePage> {
  int indexTab = 0;
  late CalendarDateTime selectedDateTime;
  late DateTime? weekStart;
  late DateTime? weekEnd;
  @override
  void initState() {
    super.initState();
    TimelineCalendar.calendarProvider = createInstance();
    selectedDateTime = TimelineCalendar.calendarProvider.getDateTime();
    getLatestWeek();
  }

  getLatestWeek() {
    setState(() {
      weekStart = selectedDateTime.toDateTime().findFirstDateOfTheWeek();
      weekEnd = selectedDateTime.toDateTime().findLastDateOfTheWeek();
    });
  }

  List<Map<String, dynamic>> timeline = [
    {
      "hora": "08:00 - 09:00",
      "description": "Quimica",
    },
    {
      "hora": "09:10 - 10:00",
      "description": "Física",
    },
    {
      "hora": "10:20 - 12:00",
      "description": "Matemática",
    },
    {
      "hora": "12:00 - 13:15",
      "description": "Intervalo",
    },
    {
      "hora": "13:20 - 14:00",
      "description": "Prática Informática",
    },
    {
      "hora": "14:20 - 15:00",
      "description": "Enfermágem",
    },
    {
      "hora": "15:20 - 16:00",
      "description": "Educação Física",
    },
    {
      "hora": "16:00",
      "description": "Saída",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        title: const Text(
          "Horário",
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.timetableTableRoute);
            },
            icon: SvgPicture.asset(
              AppIcons.table,
              width: AppValues.s20,
              color: AppColors.secondColor,
            ),
          ),
        ],
      ),
      body: FadeIn(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: TimelineCalendar(
                calendarType: CalendarType.GREGORIAN,
                calendarLanguage: "en",
                calendarOptions: CalendarOptions(
                  viewType: ViewType.DAILY,
                  toggleViewType: false,
                  headerMonthElevation: 10,
                  headerMonthShadowColor: Colors.black26,
                  headerMonthBackColor: Colors.transparent,
                  weekStartDate: weekStart,
                  weekEndDate: weekEnd,
                  font: AppStrings.fontFamily,
                ),
                dayOptions: DayOptions(
                  compactMode: true,
                  dayFontSize: 14.0,
                  disableFadeEffect: false,
                  weekDaySelectedColor: AppColors.primaryColor,
                  differentStyleForToday: true,
                  todayBackgroundColor: AppColors.secondColor,
                  selectedBackgroundColor: AppColors.primaryColor,
                  todayTextColor: Colors.white,
                ),
                headerOptions: HeaderOptions(
                    weekDayStringType: WeekDayStringTypes.SHORT,
                    monthStringType: MonthStringTypes.FULL,
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    headerTextSize: 14,
                    headerTextColor: Colors.black),
                onChangeDateTime: (dateTime) {
                  print("Date Change $dateTime");
                  selectedDateTime = dateTime;
                  getLatestWeek();
                },
                onDateTimeReset: (resetDateTime) {
                  print("Date Reset $resetDateTime");
                  selectedDateTime = resetDateTime;
                  getLatestWeek();
                },
                onMonthChanged: (monthDateTime) {
                  print("Month Change $monthDateTime");
                  selectedDateTime = monthDateTime;
                  getLatestWeek();
                },
                onYearChanged: (yearDateTime) {
                  print("Year Change $yearDateTime");
                  selectedDateTime = yearDateTime;
                  getLatestWeek();
                },
                dateTime: selectedDateTime,
              ),
            ),
            const SizedBox(height: AppValues.s15),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppValues.s15,
              ),
              child: Text(
                "Dia de Hoje",
                style: Theme.of(context).appBarTheme.titleTextStyle,
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppValues.s15, vertical: AppValues.s15),
                child: ListView.separated(
                  itemCount: timeline.length,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Container(
                        padding: EdgeInsets.all(AppValues.s10),
                        decoration: BoxDecoration(
                          color: AppColors.secondColor.withOpacity(.9),
                          borderRadius: BorderRadius.circular(AppValues.s10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                "${timeline.elementAt(index)["hora"]}",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: AppColors.whiteColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: AppValues.s10,
                            ),
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 3,
                                  color: AppColors.secondColor,
                                ),
                                color: AppColors.whiteColor,
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            SizedBox(
                              width: AppValues.s10,
                            ),
                            Expanded(
                              child: Text(
                                "${timeline.elementAt(index)["description"]}",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: AppColors.whiteColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            "${timeline.elementAt(index)["hora"]}",
                            textAlign: TextAlign.end,
                            style: TextStyle(color: Colors.black87),
                          ),
                        ),
                        SizedBox(
                          width: AppValues.s10,
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 3,
                              color: AppColors.secondColor,
                            ),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        SizedBox(
                          width: AppValues.s10,
                        ),
                        Expanded(
                          child: Text(
                            "${timeline.elementAt(index)["description"]}",
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.black87),
                          ),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: AppValues.s30,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
