import 'package:flutter/material.dart';
import '../data/education_data.dart';
import 'timeline_tile.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Education",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        ...educationData.map((e) => TimelineTile(item: e)).toList(),
      ],
    );
  }
}
