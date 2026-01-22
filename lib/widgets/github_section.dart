import 'package:flutter/material.dart';
import '../services/github_service.dart';

class GitHubSection extends StatelessWidget {
  const GitHubSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "GitHub Profile",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),

        FutureBuilder(
          future: GitHubService.fetchProfile(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            }

            if (snapshot.hasError) {
              return const Text("Failed to load GitHub data");
            }

            final data = snapshot.data as Map<String, dynamic>;

            return Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Username: ${data['login']}"),
                  Text("Public Repos: ${data['public_repos']}"),
                  Text("Followers: ${data['followers']}"),
                  Text("Following: ${data['following']}"),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
