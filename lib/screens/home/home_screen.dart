import 'package:flutter/material.dart';
import '../../services/api_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String statusMessage = "Checking backend…";

  @override
  void initState() {
    super.initState();
    checkBackendStatus();
  }

  void checkBackendStatus() async {
    String result = await ApiService.testConnection();
    setState(() => statusMessage = result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dashboard")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "System Status",
              style: Theme.of(context).textTheme.titleLarge,
            ),

            const SizedBox(height: 10),

            Card(
              child: ListTile(
                leading: const Icon(Icons.cloud, size: 30, color: Colors.blue),
                title: const Text("Backend Server"),
                subtitle: Text(statusMessage),
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.videocam,
                  size: 30,
                  color: Colors.red,
                ),
                title: const Text("CCTV Device Status"),
                subtitle: const Text("Camera Ready"),
              ),
            ),

            const SizedBox(height: 20),
            Text(
              "Quick Actions",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 10),

            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.person_add),
                  label: const Text("Add Identity"),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                  label: const Text("Recognize Face"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
