import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../widgets/sidebar.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Sidebar(),
        Expanded(
          child: Center(
            child: SizedBox(
              width: 1000, // prevents stretched UI
              child: const HomeScreen(),
            ),
          ),
        ),
      ],
    );
  }
}
