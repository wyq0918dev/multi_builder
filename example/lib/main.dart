import 'package:flutter/material.dart';
import 'package:multi_builder/multi_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: <TransitionBuilder>[].toBuilder,
      home: Scaffold(
        appBar: AppBar(title: const Text('Multi Builder Example')),
        body: Center(child: Text('Hello World')),
      ),
    );
  }
}
