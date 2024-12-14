import 'package:counter_app_with_custom_state_management/counter_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Counter App',
      home: CounterWidget(),
    );
  }
}
