import 'package:flutter/material.dart';
import 'package:school_erp_project/widgets/dashboard/actioncard/Quick_action.dart';
import 'package:school_erp_project/widgets/dashboard/fee_overview.dart';
import 'package:school_erp_project/widgets/dashboard/inventory_overview.dart';
import 'package:school_erp_project/widgets/dashboard/Revenue_overview_card.dart';
import 'package:school_erp_project/widgets/dashboard/statscard/stats_grid.dart';
import 'package:school_erp_project/widgets/dashboard/top_bar.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: Column(
        children: [
          const TopBar(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Header Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Good Morning Admin",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Here's what's happening with your school today",
                            style: TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.add, color: Colors.white),
                        label: const Text(
                          "New Admission",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.indigoAccent[400],
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 15,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Stats Cards
                  const StatsGrid(),

                  const SizedBox(height: 20),

                  // Quick Actions
                  const QuickActionsSection(),
                  const SizedBox(height: 20),

                  // Overview Section
                  IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(child: RevenueOverview()),
                        const SizedBox(width: 20),
                        Expanded(child: FeeOverview()),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  InventoryOverview(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
