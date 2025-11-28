import 'package:flutter/material.dart';

import 'dashboard.dart';

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
      },
    );
  }
}

