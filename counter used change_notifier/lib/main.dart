import 'package:f3/widgets/counter.dart';
import 'package:f3/widgets/counter_button.dart';
import 'package:f3/widgets/counter_display.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => Counter()),
        ],
        child: Scaffold(
          appBar: AppBar(title: const Text('Counter'),),
          body: const Center(
            child: Column(
              children: [
                CounterDisplay(),
                CounterButton(),
              ],
            ),
          ),
        ),
      )
    );
  }
}
