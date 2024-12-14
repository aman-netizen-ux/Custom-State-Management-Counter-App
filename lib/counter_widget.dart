import 'package:counter_app_with_custom_state_management/counter_provider.dart';
import 'package:counter_app_with_custom_state_management/home_page.dart';
import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }


  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      counter: _counter,
      increment: _incrementCounter,
      decrement: _decrementCounter,
      child: const HomePage(),
    );
  }
}