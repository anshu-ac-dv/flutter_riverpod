import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/riverpod.dart';

final hello = Provider<String>((ref) {
  return 'Anshu';
});

final age = Provider<int>((ref) {
  return 22;
});
//
// class HomeScreen extends ConsumerWidget {
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref, ) {
//     final answer = ref.watch(hello);
//     final ge = ref.watch(age);
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.purpleAccent,
//         title: const Text('Home'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Text(answer +" "+ge.toString()),
//       ),
//     );
//   }
// }

// This is a stateful widget for riverpord
class HomeScreen2 extends ConsumerStatefulWidget {
  const HomeScreen2({super.key});

  @override
  ConsumerState<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends ConsumerState<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    final answer = ref.watch(hello);
    final ge = ref.watch(age);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: SafeArea(child: Text(answer)),
    );
  }
}
