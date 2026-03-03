import 'package:flutter/material.dart';

class FeeOverview extends StatefulWidget {
  const FeeOverview({super.key});

  @override
  State<FeeOverview> createState() => _FeeOverviewState();
}

class _FeeOverviewState extends State<FeeOverview> {
  String selectedValue = "All";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Header Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Fee Overview",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              /// Dropdown
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: DropdownButton<String>(
                  value: selectedValue,
                  underline: const SizedBox(),
                  // icon: const Icon(Icons.keyboard_arrow_down),
                  items: const [
                    DropdownMenuItem(value: "All", child: Text("All")),
                    DropdownMenuItem(value: "Paid", child: Text("Paid")),
                    DropdownMenuItem(value: "Pending", child: Text("Pending")),
                  ],
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value!;
                    });
                  },
                ),
              ),
            ],
          ),

          const SizedBox(height: 18),

          /// Pending Students Card
          Container(
            height: 100,
            margin: const EdgeInsets.only(bottom: 5),
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xfffdf1e6),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.orange.shade300),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Pending Students",
                  style: TextStyle(color: Colors.deepOrange, fontSize: 14),
                ),
                SizedBox(height: 10),
                Text(
                  "124",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: Colors.deepOrange,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          const Text(
            "Fee Breakdown by Term",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),

          const SizedBox(height: 10),

          termTile("Term 1"),
          termTile("Term 2"),
          termTile("Term 3"),
        ],
      ),
    );
  }

  Widget termTile(String title) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xfff5f6fa),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        title,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      ),
    );
  }
}
