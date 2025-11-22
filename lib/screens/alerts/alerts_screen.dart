import 'package:flutter/material.dart';

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Suspicious Activity Alerts",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
