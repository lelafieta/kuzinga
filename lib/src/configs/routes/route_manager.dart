import 'package:flutter/material.dart';
import 'package:kuzinga/src/features/attendance/presentation/pages/attendance_page.dart';
import 'package:kuzinga/src/features/calendar/presentation/pages/calendar_page.dart';
import 'package:kuzinga/src/features/exames/pages/exame_page.dart';
import 'package:kuzinga/src/features/explore/presentation/pages/explore_page.dart';
import 'package:kuzinga/src/features/home/presentation/pages/user_options_page.dart';
import 'package:kuzinga/src/features/lessons/pages/lesson_page.dart';
import 'package:kuzinga/src/features/library/pages/library_page.dart';
import 'package:kuzinga/src/features/message/presentation/pages/chat_page.dart';
import 'package:kuzinga/src/features/notifications/pages/notification_page.dart';
import 'package:kuzinga/src/features/profile/presentation/profile_page.dart';
import 'package:kuzinga/src/features/splash/presentation/pages/splash_page.dart';
import 'package:kuzinga/src/features/timetable/pages/timetable_page.dart';

import '../../features/auth/login/presentation/pages/login_page.dart';
import '../../features/introduction/presentation/pages/introduction_page.dart';
import '../../features/kuzinga/presentation/pages/kuzinga_page.dart';
import '../../features/timetable/pages/timetable_table_page.dart';
import 'routes.dart';

class RouteManager {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AppRoutes.rootRoute:
        return MaterialPageRoute(
          builder: (context) => const SplashPage(),
        );

      case AppRoutes.introductionRoute:
        return MaterialPageRoute(
          builder: (context) => const IntroductionPage(),
        );
      case AppRoutes.loginRoute:
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );
      case AppRoutes.kuslaRoute:
        return MaterialPageRoute(
          builder: (context) => const KuzingaPage(),
        );
      case AppRoutes.chatRoute:
        return MaterialPageRoute(
          builder: (context) => const ChatPage(),
        );
      case AppRoutes.calendarRoute:
        return MaterialPageRoute(
          builder: (context) => const CalendarPage(),
        );
      case AppRoutes.exploreRoute:
        return MaterialPageRoute(
          builder: (context) => const ExplorePage(),
        );
      case AppRoutes.attendanceRoute:
        return MaterialPageRoute(
          builder: (context) => const AttendancePage(),
        );
      case AppRoutes.exameRoute:
        return MaterialPageRoute(
          builder: (context) => const ExamePage(),
        );
      case AppRoutes.libraryRoute:
        return MaterialPageRoute(
          builder: (context) => const LibraryPage(),
        );
      case AppRoutes.timetableRoute:
        return MaterialPageRoute(
          builder: (context) => const TimetablePage(),
        );
      case AppRoutes.timetableTableRoute:
        return MaterialPageRoute(
          builder: (context) => const TimetableTablePage(),
        );
      case AppRoutes.lessonRoute:
        return MaterialPageRoute(
          builder: (context) => const LessonPage(),
        );

      case AppRoutes.notificationRoute:
        return MaterialPageRoute(
          builder: (context) => const NotificationPage(),
        );

      case AppRoutes.profileRoute:
        return MaterialPageRoute(
          builder: (context) => const ProfilePage(),
        );

      case AppRoutes.userOptionsRoute:
        return MaterialPageRoute(
          builder: (context) => const UserOptionsPage(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const Text("Rota não existente"),
        );
    }
  }
}
