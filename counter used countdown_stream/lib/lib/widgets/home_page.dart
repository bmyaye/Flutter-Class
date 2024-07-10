import 'package:countdown_stream/countdown_stream.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final countdown = CountdownStream(initialSeconds: 10);
    return Scaffold(
      appBar: AppBar(
        title: const Text('App'),
      ),
      body: Center(
        child: Column(
          children: [
        
            // StreamBuilder to display the countdown
            StreamBuilder<int>(
              stream: countdown.stream,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text('Countdown: ${snapshot.data}');
                }
                return const Text('Countdown: 0');
              },
            ),
        
            // Button to start the countdown
            ElevatedButton(
              onPressed: () {
                countdown.startTimer();
              }, 
              child: const Text('Click me!'),
            ),
          ],
        ),
      )
    );
  }
}