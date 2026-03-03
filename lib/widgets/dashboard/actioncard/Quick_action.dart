import 'package:flutter/material.dart';
import 'package:school_erp_project/widgets/dashboard/actioncard/action_card.dart';

class QuickActionsSection extends StatefulWidget {
  const QuickActionsSection({super.key});

  @override
  State<QuickActionsSection> createState() => _QuickActionsSectionState();
}

class _QuickActionsSectionState extends State<QuickActionsSection> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Quick Actions",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),

          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 5,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 2.0,
            children: [
              ActionCard(
                title: "Add Class",
                icon: Icons.add,
                iconColor: Colors.blue,
                isSelected: selectedIndex == 0,
                onTap: () {
                  setState(() {
                    selectedIndex = 0;
                  });
                },
              ),
              ActionCard(
                title: "Add Stocks Entry",
                icon: Icons.inventory_2_outlined,
                iconColor: Colors.blue,
                isSelected: selectedIndex == 1,
                onTap: () {
                  setState(() {
                    selectedIndex = 1;
                  });
                },
              ),
              ActionCard(
                title: "Students Details",
                icon: Icons.people,
                iconColor: Colors.blue,
                isSelected: selectedIndex == 2,
                onTap: () {
                  setState(() {
                    selectedIndex = 2;
                  });
                },
              ),
              ActionCard(
                title: "Fee Management",
                icon: Icons.attach_money,
                iconColor: Colors.blue,
                isSelected: selectedIndex == 3,
                onTap: () {
                  setState(() {
                    selectedIndex = 3;
                  });
                },
              ),
              ActionCard(
                title: "Add Teachers",
                icon: Icons.school_outlined,
                iconColor: Colors.blue,
                isSelected: selectedIndex == 4,
                onTap: () {
                  setState(() {
                    selectedIndex = 4;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
