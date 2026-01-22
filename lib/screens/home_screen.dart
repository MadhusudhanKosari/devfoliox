import 'package:flutter/material.dart';
import 'projects_screen.dart';
import 'contact_screen.dart';
import '../widgets/skills_section.dart';
import '../widgets/education_section.dart';
import '../widgets/achievements_section.dart';
import '../widgets/animated_section.dart';
import '../widgets/github_section.dart';

class HomeScreen extends StatelessWidget {
  final VoidCallback toggleTheme;
  final bool isDark;

  const HomeScreen({
    super.key,
    required this.toggleTheme,
    required this.isDark,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DevFolioX"),
        actions: [
          IconButton(
            icon: Icon(isDark ? Icons.light_mode : Icons.dark_mode),
            onPressed: toggleTheme,
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Hi, I'm Madhusudhan 👋",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 12),

            const Text(
              "Full Stack & Machine Learning Engineer",
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),

            const SizedBox(height: 16),

            const Text(
              "I build scalable web and mobile applications with clean UI and strong backend logic.",
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 30),

            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const ProjectsScreen()),
                    );
                  },
                  child: const Text("View Projects"),
                ),
                const SizedBox(width: 16),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const ContactScreen()),
                    );
                  },
                  child: const Text("Contact Me"),
                ),
              ],
            ),

            const SizedBox(height: 40),

            _statsSection(),

            const SizedBox(height: 40),

            AnimatedSection(child: const SkillsSection()),
            // ✅ NOW IN CORRECT PLACE
            const SizedBox(height: 40),
            AnimatedSection(child: const EducationSection()),
            const SizedBox(height: 40),
            AnimatedSection(child: const AchievementsSection()),
            const SizedBox(height: 40),
            const GitHubSection(),
          ],
        ),
      ),
    );
  }

  Widget _statsSection() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          _StatItem("15+", "Projects"),
          _StatItem("10+", "Technologies"),
          _StatItem("5+", "Awards"),
        ],
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String value;
  final String label;

  const _StatItem(this.value, this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 6),
        Text(label, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}
