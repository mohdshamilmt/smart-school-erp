import 'package:flutter/material.dart';

class ActionCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color iconColor;
  final bool isSelected;
  final VoidCallback onTap;

  const ActionCard({
    super.key,
    required this.title,
    required this.icon,
    required this.isSelected,
    required this.onTap,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue.shade50 : const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected ? Colors.blue : Colors.grey.shade200,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: iconColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                icon,
                size: 28,
                color: isSelected ? Colors.lightBlueAccent: iconColor,
              ),
            ),

            const SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                color: isSelected ? Colors.blue : Colors.black,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
