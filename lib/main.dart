import 'package:flutter/material.dart';

import 'activities.dart';
import 'add_teacher.dart';
import 'admissions.dart';
import 'awards.dart';
import 'buses.dart';
import 'bus_routes.dart';
import 'calendar.dart';
import 'campus_life.dart';
import 'dashboard.dart';
import 'departments.dart';
import 'edit_activity.dart';
import 'edit_bus.dart';
import 'edit_student.dart';
import 'edit_teacher.dart';
import 'events.dart';
import 'examinations.dart';
import 'fees.dart';
import 'gallery.dart';
import 'notifications.dart';
import 'students.dart';
import 'teachers.dart';

void main() {
  runApp(const SchoolManagementApp());
}

class SchoolManagementApp extends StatelessWidget {
  const SchoolManagementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School Management System',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Segoe UI',
        primarySwatch: Colors.indigo,
        useMaterial3: true,
      ),
      home: const DashboardPage(),
      routes: {
        '/dashboard': (_) => const DashboardPage(),
        '/teachers': (_) => const TeachersManagementPage(),
        '/students': (_) => const StudentsManagementPage(),
        '/add-teacher': (_) => const AddTeacherPage(),
        '/activities': (_) => const ActivitiesManagementPage(),
        '/edit-activity': (context) {
          final args = ModalRoute.of(context)!.settings.arguments;
          final activityId = args is int ? args : null;
          return EditActivityPage(activityId: activityId);
        },
        '/events': (_) => const EventsManagementPage(),
        '/buses': (_) => const BusesManagementPage(),
        '/edit-bus': (context) {
          final args = ModalRoute.of(context)!.settings.arguments;
          final busId = args is int ? args : null;
          return EditBusPage(busId: busId);
        },
        '/edit-student': (context) {
          final args = ModalRoute.of(context)!.settings.arguments;
          final studentId = args is int ? args : null;
          return EditStudentPage(studentId: studentId);
        },
        '/bus-routes': (_) => const BusRoutesManagementPage(),
        '/admissions': (_) => const AdmissionsManagementPage(),
        '/awards': (_) => const AwardsManagementPage(),
        '/calendar': (_) => const CalendarManagementPage(),
        '/campus-life': (_) => const CampusLifeManagementPage(),
        '/departments': (_) => const DepartmentsManagementPage(),
        '/examinations': (_) => const ExaminationManagementPage(),
        '/fees': (_) => const FeesManagementPage(),
        '/gallery': (_) => const PhotoGalleryPage(),
        '/notifications': (_) => const NotificationsManagementPage(),
        '/edit-teacher': (context) {
          final args = ModalRoute.of(context)!.settings.arguments;
          final teacherId = args is int ? args : null;
          return EditTeacherPage(teacherId: teacherId);
        },
      },
    );
  }
}

