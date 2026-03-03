import 'package:flutter/material.dart';
import 'package:school_erp_project/screen/main_screen.dart';


void main() {
  runApp(const SchoolERPApp());
}

class SchoolERPApp extends StatelessWidget {
  const SchoolERPApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'School ERP',
      home:  const MainDashboard(),
     );
  }
}
