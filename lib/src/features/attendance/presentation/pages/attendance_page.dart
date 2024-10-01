import 'package:animate_do/animate_do.dart';

import 'package:flutter/material.dart';
import 'package:kuzinga/src/features/auth/login/data/datas.dart';

import 'package:table_calendar/table_calendar.dart';

import '../../../../configs/themes/color_palette.dart';
import '../../../../core/strings/app_strings.dart';
import '../../../../core/utils/app_values.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({super.key});

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        title: const Text(
          AppStrings.attendance,
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: FadeIn(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppValues.s15,
                  vertical: AppValues.s7_5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Hoje",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        const SizedBox(
                          width: AppValues.s10,
                        ),
                        const Text(
                          "29 Agosto 2024",
                          style: TextStyle(
                            fontSize: AppValues.s15,
                            color: AppColors.secondColor,
                            //fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      style: const ButtonStyle(
                          minimumSize: MaterialStatePropertyAll(
                            Size(10, AppValues.s40),
                          ),
                          backgroundColor:
                              MaterialStatePropertyAll(AppColors.success)),
                      onPressed: () {},
                      child: const Text("Presente"),
                    ),
                  ],
                ),
              ),
              const Divider(),
              TableCalendar(
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: _focusedDay,
                selectedDayPredicate: (day) {
                  return isSameDay(_selectedDay, day);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                  });
                },
                headerStyle: const HeaderStyle(
                  titleCentered: true,
                  formatButtonVisible: false,
                  titleTextStyle: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: AppColors.secondColor,
                  ),
                  leftChevronIcon: Icon(
                    Icons.chevron_left,
                    color: AppColors.secondColor,
                  ),
                  rightChevronIcon: Icon(
                    Icons.chevron_right,
                    color: AppColors.secondColor,
                  ),
                ),
                calendarStyle: CalendarStyle(
                  selectedDecoration: const BoxDecoration(
                    color: AppColors.secondColor,
                    shape: BoxShape.circle,
                  ),
                  todayDecoration: BoxDecoration(
                    color: AppColors.secondColor.withOpacity(0.5),
                    shape: BoxShape.circle,
                  ),
                  markerDecoration: const BoxDecoration(
                    color: AppColors.error,
                    shape: BoxShape.circle,
                  ),
                  outsideDaysVisible: false,
                ),
                daysOfWeekStyle: const DaysOfWeekStyle(
                  weekdayStyle: TextStyle(
                    color: AppColors.secondColor,
                    fontWeight: FontWeight.bold,
                  ),
                  weekendStyle: TextStyle(
                    color: AppColors.error,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                rowHeight: 40.0, // Adjust this value as per your design
              ),
              const SizedBox(
                height: AppValues.s15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppValues.s15),
                child: Text(
                  "Agosto",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              const SizedBox(
                height: AppValues.s15,
              ),
              Padding(
                padding: const EdgeInsets.all(AppValues.s15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: AppValues.s100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: AppValues.s100,
                              height: AppValues.s100,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(AppValues.s10),
                                color: AppColors.secondColor.withOpacity(.1),
                              ),
                              child: const Center(
                                child: Text(
                                  "26",
                                  style: TextStyle(
                                    fontSize: AppValues.s28,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.secondColor,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: AppValues.s10,
                            ),
                            const Center(
                              child: Text(
                                "Total trabalho Hoje",
                                style: TextStyle(color: AppColors.secondColor),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: AppValues.s10,
                    ),
                    Expanded(
                      child: SizedBox(
                        width: AppValues.s100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: AppValues.s100,
                              height: AppValues.s100,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(AppValues.s10),
                                color: AppColors.success.withOpacity(.1),
                              ),
                              child: const Center(
                                child: Text(
                                  "8",
                                  style: TextStyle(
                                    fontSize: AppValues.s28,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.success,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: AppValues.s10,
                            ),
                            const Center(
                              child: Text(
                                "Presença",
                                style: TextStyle(color: AppColors.success),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: AppValues.s10,
                    ),
                    Expanded(
                      child: SizedBox(
                        width: AppValues.s100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: AppValues.s100,
                              height: AppValues.s100,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(AppValues.s10),
                                color: AppColors.error.withOpacity(.1),
                              ),
                              child: const Center(
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                    fontSize: AppValues.s28,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.error,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: AppValues.s10,
                            ),
                            const Center(
                              child: Text(
                                "Ausença",
                                style: TextStyle(color: AppColors.error),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: AppValues.s15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppValues.s15),
                child: Text(
                  "Comparecimento Geral",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              const SizedBox(
                height: AppValues.s15,
              ),
              Padding(
                padding: const EdgeInsets.all(AppValues.s15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: AppValues.s100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: AppValues.s100,
                              height: AppValues.s100,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(AppValues.s10),
                                color: AppColors.secondColor.withOpacity(.1),
                              ),
                              child: const Center(
                                child: Text(
                                  "26",
                                  style: TextStyle(
                                    fontSize: AppValues.s28,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.secondColor,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: AppValues.s10,
                            ),
                            const Center(
                              child: Text(
                                "Total trabalho Hoje",
                                style: TextStyle(color: AppColors.secondColor),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: AppValues.s10,
                    ),
                    Expanded(
                      child: SizedBox(
                        width: AppValues.s100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: AppValues.s100,
                              height: AppValues.s100,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(AppValues.s10),
                                color: AppColors.success.withOpacity(.1),
                              ),
                              child: const Center(
                                child: Text(
                                  "8",
                                  style: TextStyle(
                                    fontSize: AppValues.s28,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.success,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: AppValues.s10,
                            ),
                            const Center(
                              child: Text(
                                "Presença",
                                style: TextStyle(color: AppColors.success),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: AppValues.s10,
                    ),
                    Expanded(
                      child: SizedBox(
                        width: AppValues.s100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: AppValues.s100,
                              height: AppValues.s100,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(AppValues.s10),
                                color: AppColors.error.withOpacity(.1),
                              ),
                              child: const Center(
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                    fontSize: AppValues.s28,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.error,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: AppValues.s10,
                            ),
                            const Center(
                              child: Text(
                                "Ausença",
                                style: TextStyle(color: AppColors.error),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
