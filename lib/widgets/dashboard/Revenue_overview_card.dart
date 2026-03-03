import 'package:flutter/material.dart';

class RevenueOverview extends StatefulWidget {
  @override
  State<RevenueOverview> createState() => _RevenueOverviewState();
}

class _RevenueOverviewState extends State<RevenueOverview> {
  String selectedValue = "This Month";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: boxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Revenue Overview",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: dropdownDecoration(),
                child: DropdownButton<String>(
                  value: selectedValue,
                  underline: const SizedBox(),
                  items: const [
                    DropdownMenuItem(
                      value: "This Month",
                      child: Text("This Month"),
                    ),
                    DropdownMenuItem(
                      value: "Last Month",
                      child: Text("Last Month"),
                    ),
                    DropdownMenuItem(
                      value: "This Year",
                      child: Text("This Year"),
                    ),
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
          const SizedBox(height: 20),
          revenueCard("Total Revenue", "AED 245450"),
          revenueCard("Pending Amount", "AED 138450", percentage: "+8%"),
          revenueCard("Collected Amount", "AED 85230", percentage: "+15%"),
        ],
      ),
    );
  }

  Widget revenueCard(String title, String amount, {String? percentage}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xfff7f8fc),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(color: Colors.grey)),
              const SizedBox(height: 5),
              Text(
                amount,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          if (percentage != null)
            Text(
              percentage,
              style: const TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
        ],
      ),
    );
  }

  Widget termTile(String title) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xfff7f8fc),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(title),
    );
  }

  BoxDecoration boxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      boxShadow: [
        BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10),
      ],
    );
  }

  BoxDecoration dropdownDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.grey.shade300),
    );
  }
}
