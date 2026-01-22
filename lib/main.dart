import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const DevFolioX());
}

class DevFolioX extends StatefulWidget {
  const DevFolioX({super.key});

  @override
  State<DevFolioX> createState() => _DevFolioXState();
}

class _DevFolioXState extends State<DevFolioX> {
  bool isDark = true;

  void toggleTheme() {
    setState(() {
      isDark = !isDark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDark ? AppTheme.darkTheme : AppTheme.lightTheme,
      home: HomeScreen(toggleTheme: toggleTheme, isDark: isDark),
    );
  }
}
