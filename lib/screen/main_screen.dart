import 'package:flutter/material.dart';
import 'package:school_erp_project/screen/dashboard_screen.dart';
import 'package:school_erp_project/widgets/dashboard/side_bar.dart';

class MainDashboard extends StatefulWidget {
  const MainDashboard({super.key});

  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  int selectedIndex = 0;

  final List<Widget> pages = const [DashboardScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Sidebar(
            selectedIndex: selectedIndex,
            onItemSelected: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),

          Expanded(child: pages[selectedIndex]),
        ],
      ),
    );
  }
}
