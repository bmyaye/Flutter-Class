import 'package:f3/widgets/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterButton extends StatelessWidget {
  // late int initial;
  // CounterButton({super.key, required this.initial});
  const CounterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => context.read<Counter>().increment(),
      child: const Icon(Icons.add_outlined),
    );
  }
}