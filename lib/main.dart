import 'package:flutter/material.dart';
import 'screens/home/home_screen.dart';
import 'screens/live_view/live_view_screen.dart';
import 'screens/face_logs/face_logs_screen.dart';
import 'screens/alerts/alerts_screen.dart';
import 'screens/settings/settings_screen.dart';

void main() {
  runApp(const FRSApp());
}

class FRSApp extends StatelessWidget {
  const FRSApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FRS Surveillance App",
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const MainNavigation(),
    );
  }
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int currentIndex = 0;

  final screens = const [
    HomeScreen(),
    LiveViewScreen(),
    FaceLogsScreen(),
    AlertsScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: (i) => setState(() => currentIndex = i),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.videocam), label: "Live"),
          NavigationDestination(icon: Icon(Icons.people), label: "Faces"),
          NavigationDestination(
            icon: Icon(Icons.notifications),
            label: "Alerts",
          ),
          NavigationDestination(icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}
