import 'package:flutter/material.dart';
import 'package:school_erp_project/widgets/dashboard/statscard/stat_card.dart';

class StatsGrid extends StatelessWidget {
  const StatsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
       mainAxisExtent: 180,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      childAspectRatio: 1.3,
      children: const [
        StatCard(
          title: "Total Students",
          value: "1288",
          icon: Icons.people_outline,
          iconColor: Colors.blue,
        ),
        StatCard(
          title: "Total Teachers",
          value: "34",
          icon: Icons.school,
          iconColor: Colors.green,
        ),
        StatCard(
          title: "Total Classes",
          value: "12",
          icon: Icons.calendar_today,
          iconColor: Colors.purple,
        ),
        StatCard(
          title: "Total Revenue",
          value: "AED 84000",
          icon: Icons.attach_money,
          iconColor: Colors.orange,
        ),
      ],
    );
  }
}