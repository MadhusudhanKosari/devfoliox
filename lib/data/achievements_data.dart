class Achievement {
  final String title;
  final String description;
  final String year;

  Achievement({
    required this.title,
    required this.description,
    required this.year,
  });
}

final List<Achievement> achievements = [
  Achievement(
    title: "Adobe PDF Hackathon Finalist",
    description:
        "Selected among top teams for persona-aware PDF summarization system.",
    year: "2024",
  ),
  Achievement(
    title: "Smart India Hackathon – Level 2",
    description:
        "Qualified to Level 2 with FarmSyncro contract farming platform.",
    year: "2023",
  ),
  Achievement(
    title: "IEEE Conference Publication",
    description: "Published paper on COPD Prediction using Machine Learning.",
    year: "2025",
  ),
  Achievement(
    title: "Team Lead – Final Year Project",
    description: "Led team for ML-based healthcare prediction system.",
    year: "2025",
  ),
];
