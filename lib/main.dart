import 'package:flutter/material.dart';

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
      home: Scaffold(
        body: Center(
          child: Text(
            'School ERP Web App',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
