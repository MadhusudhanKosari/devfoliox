import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/projects_screen.dart';
import '../screens/contact_screen.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black87,
      child: SizedBox(
        width: 220,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),
              const Text(
                "Madhusudhan",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              const Divider(color: Colors.white24),

              _navItem(context, "Home", const HomeScreen()),
              _navItem(context, "Projects", const ProjectsScreen()),
              _navItem(context, "Contact", const ContactScreen()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _navItem(BuildContext context, String title, Widget page) {
    return ListTile(
      title: Text(title, style: const TextStyle(color: Colors.white)),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => page));
      },
    );
  }
}
