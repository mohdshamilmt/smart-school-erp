import 'package:flutter/material.dart';
import 'package:school_erp_project/widgets/dashboard/inventory.dart';


class InventoryOverview extends StatelessWidget {
  const InventoryOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F7FA),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Inventory Overview",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),

          //  GridView (Fixed correctly)
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 4,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 2.0,

            children: const [
              Inventorycard(
                title: "Textbooks",
                value: "245",
                borderColor: Color(0xFFB3D4FC),
                backgroundColor: Color(0xFFEAF4FF),
              ),
              Inventorycard(
                title: "Stationery",
                value: "456",
                borderColor: Color(0xFFE0E0E0),
                backgroundColor: Colors.white,
              ),
              Inventorycard(
                title: "Uniforms",
                value: "189",
                borderColor: Color(0xFFE0E0E0),
                backgroundColor: Colors.white,
              ),
              Inventorycard(
                title: "Sports Equipment",
                value: "78",
                borderColor: Color(0xFFFFD8B3),
                backgroundColor: Color(0xFFFFF3E6),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
