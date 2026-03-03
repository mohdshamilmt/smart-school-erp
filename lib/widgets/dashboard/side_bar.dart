import 'package:flutter/material.dart';

class Sidebar extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;

  const Sidebar({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  bool isExpanded = false;

  final List<Map<String, dynamic>> menuItems = [
    {"icon": Icons.dashboard_outlined, "title": "Dashboard"},
    {"icon": Icons.people_outline, "title": "Students Details"},
    {"icon": Icons.attach_money_outlined, "title": "Fee Management"},
    {"icon": Icons.directions_bus_outlined, "title": "Transport Details"},
    {"icon": Icons.school_outlined, "title": "Add Teachers"},
    {"icon": Icons.inventory_2_outlined, "title": "Add Stocks Entry"},
    {"icon": Icons.settings_outlined, "title": "Settings"},
  ];

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isExpanded = true),
      onExit: (_) => setState(() => isExpanded = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: isExpanded ? 220 : 70,
        color: const Color(0xFFEAF4F4),
        child: Column(
          children: [
            const SizedBox(height: 20),

            // Logo Section
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: isExpanded
                  ? Row(
                      children: const [
                        Icon(Icons.school, color: Colors.green),
                        SizedBox(width: 8),
                        Text("Raiz",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                      ],
                    )
                  : const Icon(Icons.school, color: Colors.green),
            ),

            const SizedBox(height: 20),

            // Menu Items
            Expanded(
              child: ListView.builder(
                itemCount: menuItems.length,
                itemBuilder: (context, index) {
                  return buildMenuItem(index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(int index) {
    bool isSelected = widget.selectedIndex == index;

    return InkWell(
      onTap: () => widget.onItemSelected(index),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(
              menuItems[index]["icon"],
              color: isSelected ? Colors.purple : Colors.teal,
            ),
            if (isExpanded) ...[
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  menuItems[index]["title"],
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: isSelected ? Colors.purple : Colors.black87,
                    fontWeight:
                        isSelected ? FontWeight.w600 : FontWeight.normal,
                  ),
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}