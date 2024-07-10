// import 'package:flutter/material.dart';

// class Counter extends StatefulWidget {
//   const Counter({super.key});

//   @override
//   State<Counter> createState() => _CounterState();
// }

// class _CounterState extends State<Counter> {
//   int count = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         AppBar(
//           title: const Center(
//             child: Text(
//               'Counter',
//               style: TextStyle(
//                 color: Colors.black,
//               ),
//             ),
//           ),
//           backgroundColor: Colors.lightBlue,
//         ),
//         Text('count: $count'),
//         ElevatedButton(
//           onPressed: () {
//             setState(() {
//               count++;
//               debugPrint('count: $count');
//             });
//           },
//           child: const Icon(Icons.add_outlined)
//         ),
//       ]
//     );
//   }
// }

import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int _count = 0;
  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}