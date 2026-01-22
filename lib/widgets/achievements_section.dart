import 'package:flutter/material.dart';
import '../data/achievements_data.dart';
import 'achievement_card.dart';

class AchievementsSection extends StatelessWidget {
  const AchievementsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Achievements & Publications",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        ...achievements.map((a) => AchievementCard(achievement: a)).toList(),
      ],
    );
  }
}
