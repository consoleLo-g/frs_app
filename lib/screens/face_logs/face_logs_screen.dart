import 'package:flutter/material.dart';

class FaceLogsScreen extends StatelessWidget {
  const FaceLogsScreen({super.key});

  final sampleLogs = const [
    {"name": "Unknown Person", "match": "12%", "time": "10:22 AM"},
    {"name": "Kuldeep", "match": "98%", "time": "9:48 AM"},
    {"name": "Rohit", "match": "93%", "time": "8:15 AM"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Face Logs")),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: sampleLogs.length,
        itemBuilder: (context, i) {
          final item = sampleLogs[i];
          return Card(
            child: ListTile(
              leading: const Icon(Icons.face, size: 34),
              title: Text(item["name"]!),
              subtitle: Text("Match: ${item["match"]}"),
              trailing: Text(item["time"]!),
            ),
          );
        },
      ),
    );
  }
}
