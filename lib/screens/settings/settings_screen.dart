import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final backendController = TextEditingController(
    text: "http://127.0.0.1:8000",
  );
  bool soundAlerts = true;
  String cameraName = "Android CCTV Device";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Settings")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text("Backend URL", style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 8),
          TextField(
            controller: backendController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Enter backend API base URL",
            ),
          ),

          const SizedBox(height: 20),
          SwitchListTile(
            title: const Text("Enable Sound Alerts"),
            value: soundAlerts,
            onChanged: (v) => setState(() => soundAlerts = v),
          ),

          const SizedBox(height: 20),
          Text(
            "Camera Device Name",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          TextField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: cameraName,
            ),
            onChanged: (v) => cameraName = v,
          ),
        ],
      ),
    );
  }
}
