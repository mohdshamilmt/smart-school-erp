import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Title
          const Text(
            "Dashboard",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),

          //  Notification, Admin
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_none),
              ),

              const SizedBox(width: 18),

              PopupMenuButton<String>(
                offset: const Offset(0, 50),
                color: Colors.white,
                surfaceTintColor: Colors.white,

                constraints: const BoxConstraints(minWidth: 220),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                onSelected: (value) {
                  if (value == "profile") {
                    print("Profile clicked");
                  } else if (value == "settings") {
                    print("Settings clicked");
                  } else if (value == "logout") {
                    print("Logout clicked");
                  }
                },
                child: Row(
                  children: const [
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Text(
                        "AO",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(width: 14),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Admin Officer",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.3,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Administrator",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.keyboard_arrow_down, color: Colors.grey),
                  ],
                ),
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: "profile",
                    child: ListTile(
                      leading: Icon(
                        Icons.person_outline,
                        color: Colors.grey,
                        size: 22,
                      ),
                      title: Text(
                        "Admin Profile",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          letterSpacing: 0.3,
                        ),
                      ),
                    ),
                  ),
                  const PopupMenuItem(
                    value: "settings",
                    child: ListTile(
                      leading: Icon(
                        Icons.settings_outlined,
                        color: Colors.grey,
                        size: 22,
                      ),
                      title: Text(
                        "Settings",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          letterSpacing: 0.3,
                        ),
                      ),
                    ),
                  ),
                  const PopupMenuDivider(),
                  const PopupMenuItem(
                    value: "logout",
                    child: ListTile(
                      leading: Icon(Icons.logout, color: Colors.red, size: 22),
                      title: Text(
                        "Log Out",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 14,
                          letterSpacing: 0.3,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
