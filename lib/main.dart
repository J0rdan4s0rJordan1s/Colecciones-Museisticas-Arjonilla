import 'package:flutter/material.dart';
import 'package:flutter_application_2/tabs.dart';

void main() {
  runApp(Tabs());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
