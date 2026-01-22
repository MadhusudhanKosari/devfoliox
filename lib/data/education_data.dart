class EducationItem {
  final String title;
  final String institution;
  final String year;
  final String description;

  EducationItem({
    required this.title,
    required this.institution,
    required this.year,
    required this.description,
  });
}

final List<EducationItem> educationData = [
  EducationItem(
    title: "B.Tech in Computer Science",
    institution: "BVRIT Hyderabad College of Engineering",
    year: "2023 – 2027",
    description:
        "Computer Science undergraduate with a focus on software development.",
  ),
  EducationItem(
    title: "Intermediate (MPC)",
    institution: "Alphores Junior College",
    year: "2021 – 2023",
    description: "Secured 97.5% with strong foundation in Mathematics.",
  ),
  EducationItem(
    title: "Secondary School (SSC)",
    institution: "Sri Chaitanya High School",
    year: "2021",
    description: "Achieved 10 GPA with strong academic performance.",
  ),
];
