import 'package:flutter/material.dart';

class CounterProvider extends InheritedWidget {
  final int counter;
  final void Function() increment;
  final void Function() decrement;

  const CounterProvider({
    super.key,
    required super.child,
    required this.counter,
    required this.increment,
    required this.decrement,
  });

  static CounterProvider of(BuildContext context) {
    final CounterProvider? provider =
        context.dependOnInheritedWidgetOfExactType<CounterProvider>();
    assert(provider != null, 'No CounterProvider found in context');
    return provider!;
  }

  @override
  bool updateShouldNotify(CounterProvider oldWidget) =>
      counter != oldWidget.counter;
}
