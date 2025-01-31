import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kuzinga/src/configs/routes/routes.dart';
import 'package:kuzinga/src/core/resources/icons/app_icons.dart';
import 'package:kuzinga/src/core/strings/app_strings.dart';
import 'package:kuzinga/src/core/utils/app_values.dart';

import '../../../../configs/themes/color_palette.dart';
import '../../../auth/login/data/datas.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeIn(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: AppValues.s300,
              //color: Colors.red,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: AppValues.s210,
                    decoration: const BoxDecoration(
                      //color: Colors.blue,
                      gradient: LinearGradient(colors: [
                        AppColors.secondColor,
                        AppColors.secondColor,
                      ]),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(AppValues.s50),
                        bottomRight: Radius.circular(AppValues.s50),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SafeArea(
                          child: SizedBox(
                            width: double.infinity,
                            height: AppValues.s80,
                            //color: Colors.green,
                            child: Center(
                              child: ListTile(
                                leading: SizedBox(
                                  width: AppValues.s50,
                                  height: AppValues.s50,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).pushNamed(
                                        AppRoutes.userOptionsRoute,
                                      );
                                    },
                                    child: ClipOval(
                                      child: CachedNetworkImage(
                                        imageUrl:
                                            datas.elementAt(0).profileImage,
                                        placeholder: (context, url) =>
                                            const CircularProgressIndicator(),
                                        errorWidget: (context, url, error) =>
                                            const Icon(Icons.error),
                                        fit: BoxFit
                                            .cover, // Para garantir que a imagem preencha o contêiner
                                      ),
                                    ),
                                  ),
                                ),
                                title: InkWell(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed(AppRoutes.userOptionsRoute);
                                  },
                                  child: Row(
                                    children: [
                                      const Text(
                                        "Lingard",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.whiteColor,
                                        ),
                                      ),
                                      const Text(
                                        " A ",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.whiteColor,
                                        ),
                                      ),
                                      SvgPicture.asset(
                                        AppIcons.caretDown,
                                        color: AppColors.whiteColor,
                                      )
                                    ],
                                  ),
                                ),
                                subtitle: InkWell(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed(AppRoutes.userOptionsRoute);
                                  },
                                  child: const Text(
                                    "Class: 10 A",
                                    style: TextStyle(
                                      color: AppColors.whiteColor,
                                    ),
                                  ),
                                ),
                                trailing: IconButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, AppRoutes.notificationRoute);
                                  },
                                  icon: SvgPicture.asset(
                                    AppIcons.bellNotification,
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
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
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(AppValues.s10),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(AppValues.s10),
                                ),
                              ),
                              filled: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: AppValues.s15,
                    right: AppValues.s15,
                    child: Container(
                      width: double.infinity,
                      height: AppValues.s120,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: .10,
                            offset: Offset(1, 1),
                            blurRadius: 5,
                            color: AppColors.blackColor.withOpacity(.1),
                          ),
                        ],
                        color: Colors.white.withOpacity(.4),
                        borderRadius: BorderRadius.circular(AppValues.s10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, AppRoutes.attendanceRoute);
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: AppValues.s60,
                                    height: AppValues.s60,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          spreadRadius: .10,
                                          offset: Offset(1, 1),
                                          blurRadius: 5,
                                          color: AppColors.blackColor
                                              .withOpacity(.1),
                                        ),
                                      ],
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.circular(AppValues.s10),
                                    ),
                                    child: Center(
                                      child: SvgPicture.asset(
                                        AppIcons.userCheck,
                                        color: AppColors.secondColor,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: AppValues.s5,
                                  ),
                                  const Text(
                                    AppStrings.attendance,
                                    style: TextStyle(color: Colors.black87),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(AppRoutes.exameRoute);
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: AppValues.s60,
                                    height: AppValues.s60,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          spreadRadius: .10,
                                          offset: Offset(1, 1),
                                          blurRadius: 5,
                                          color: AppColors.blackColor
                                              .withOpacity(.1),
                                        ),
                                      ],
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.circular(AppValues.s10),
                                    ),
                                    child: Center(
                                      child: SvgPicture.asset(
                                        AppIcons.notebook,
                                        color: AppColors.secondColor,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: AppValues.s5,
                                  ),
                                  const Text(
                                    AppStrings.exams,
                                    style: TextStyle(color: Colors.black87),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: AppValues.s60,
                                  height: AppValues.s60,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        spreadRadius: .10,
                                        offset: const Offset(1, 1),
                                        blurRadius: 5,
                                        color: AppColors.blackColor
                                            .withOpacity(.1),
                                      ),
                                    ],
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.circular(AppValues.s10),
                                  ),
                                  child: Center(
                                    child: SvgPicture.asset(
                                      AppIcons.bus,
                                      color: AppColors.secondColor,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: AppValues.s5,
                                ),
                                const Text(
                                  AppStrings.bus,
                                  style: TextStyle(color: Colors.black87),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(AppRoutes.libraryRoute);
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: AppValues.s60,
                                    height: AppValues.s60,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          spreadRadius: .10,
                                          offset: Offset(1, 1),
                                          blurRadius: 5,
                                          color: AppColors.blackColor
                                              .withOpacity(.1),
                                        ),
                                      ],
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.circular(AppValues.s10),
                                    ),
                                    child: Center(
                                      child: SvgPicture.asset(
                                        AppIcons.books,
                                        color: AppColors.secondColor,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: AppValues.s5,
                                  ),
                                  const Text(
                                    AppStrings.library,
                                    style: TextStyle(color: Colors.black87),
                                  ),
                                ],
                              ),
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
              height: AppValues.s7_5,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppValues.s15, vertical: AppValues.s7_5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppStrings.todaysClass,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          const SizedBox(
                            height: AppValues.s15,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.all(AppValues.s15),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(AppValues.s10),
                                    color:
                                        AppColors.secondColor.withOpacity(.1),
                                  ),
                                  child: const Column(
                                    children: [
                                      Text(
                                        "09:00-11:30",
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                      Text(
                                        "Inglês",
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: AppValues.s10,
                              ),
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed(AppRoutes.timetableRoute);
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: AppValues.s15,
                                        vertical: AppValues.s22),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(AppValues.s10),
                                      color: AppColors.secondColor,
                                    ),
                                    child: const Column(
                                      children: [
                                        Text(
                                          "09:00-11:30",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Center(
                                          child: Text(
                                            "Quimica",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: AppValues.s10,
                              ),
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.all(AppValues.s15),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(AppValues.s10),
                                    color:
                                        AppColors.secondColor.withOpacity(.1),
                                  ),
                                  child: const Column(
                                    children: [
                                      Text(
                                        "09:00-11:30",
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                      Text(
                                        "Biologia",
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppValues.s15, vertical: AppValues.s7_5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppStrings.classRoom,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(AppValues.s10),
                            ),
                            child: GridView.builder(
                              shrinkWrap: true,
                              physics: const ClampingScrollPhysics(),
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: AppValues.s10,
                                      mainAxisSpacing: AppValues.s10,
                                      childAspectRatio: 1.3),
                              itemCount: fakeLessons.length,
                              itemBuilder: (context, index) {
                                final lesson = fakeLessons.elementAt(index);
                                return InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, AppRoutes.lessonRoute);
                                  },
                                  child: Container(
                                    padding:
                                        const EdgeInsets.all(AppValues.s15),
                                    decoration: BoxDecoration(
                                      color: lesson.color.withOpacity(.1),
                                      borderRadius:
                                          BorderRadius.circular(AppValues.s10),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                lesson.disciplineName,
                                                style: const TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: AppValues.s16,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              Text(lesson.professorName),
                                            ],
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Text(
                                                  "Aula",
                                                  style: TextStyle(
                                                    color: Colors.black87,
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          AppValues.s100),
                                                  child: Container(
                                                    width: 50,
                                                    height: 50,
                                                    color:
                                                        AppColors.strokeColor,
                                                    child:
                                                        DashedCircularProgressBar
                                                            .aspectRatio(
                                                      aspectRatio: 1,
                                                      valueNotifier:
                                                          ValueNotifier(100),
                                                      progress:
                                                          lesson.percentage,
                                                      startAngle: 225,
                                                      sweepAngle: 270,
                                                      foregroundColor:
                                                          lesson.color,
                                                      backgroundColor: AppColors
                                                          .grey
                                                          .withOpacity(.2),
                                                      foregroundStrokeWidth: 5,
                                                      backgroundStrokeWidth: 5,
                                                      animation: true,
                                                      seekSize: 2,
                                                      seekColor: const Color(
                                                          0xffeeeeee),
                                                      child: Center(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Text(
                                                              '${lesson.percentage}%',
                                                              style:
                                                                  const TextStyle(
                                                                color: AppColors
                                                                    .secondColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize:
                                                                    AppValues
                                                                        .s12,
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
                                                // Text(
                                                //   "${lesson.percentage.toString()}%",
                                                //   style: const TextStyle(
                                                //     color: Colors.black87,
                                                //   ),
                                                // ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        // Container(
                                        //   width: double.infinity,
                                        //   height: 5,
                                        //   color: Colors.red,
                                        //   child: Stack(children: [
                                        //     Positioned(
                                        //       top: 0,
                                        //       bottom: 0,
                                        //       left: 0,
                                        //       child: Container(
                                        //         width: lesson.percentage,
                                        //         height: 5,
                                        //         color: Colors.blue,
                                        //       ),
                                        //     )
                                        //   ]),
                                        // )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
