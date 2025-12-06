import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const FlutterRebootApp());
}

class FlutterRebootApp extends StatelessWidget {
  const FlutterRebootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
