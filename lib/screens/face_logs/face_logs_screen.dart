import 'package:flutter/material.dart';

class FaceLogsScreen extends StatelessWidget {
  const FaceLogsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Face Recognition Logs", style: TextStyle(fontSize: 22)),
      ),
    );
  }
}
