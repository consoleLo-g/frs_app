import 'package:flutter/material.dart';

class LiveViewScreen extends StatelessWidget {
  const LiveViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Live View")),
      body: Center(
        child: Container(
          height: 250,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.grey, width: 2),
          ),
          child: const Center(
            child: Text(
              "Camera Feed (Coming Soon)",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
          ),
        ),
      ),
    );
  }
}
