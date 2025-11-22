import 'package:flutter/material.dart';

class LiveViewScreen extends StatelessWidget {
  const LiveViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Live CCTV View (WebRTC coming later)",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
