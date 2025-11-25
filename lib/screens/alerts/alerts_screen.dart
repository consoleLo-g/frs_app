import 'package:flutter/material.dart';

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});

  final alerts = const [
    {"msg": "Unknown face detected near door", "time": "10:30 AM"},
    {"msg": "Multiple failed recognitions", "time": "09:50 AM"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Alerts")),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: alerts.length,
        itemBuilder: (context, i) {
          final a = alerts[i];
          return Card(
            color: Colors.red.shade50,
            child: ListTile(
              leading: const Icon(Icons.warning, color: Colors.red, size: 34),
              title: Text(a["msg"]!),
              subtitle: Text(a["time"]!),
            ),
          );
        },
      ),
    );
  }
}
