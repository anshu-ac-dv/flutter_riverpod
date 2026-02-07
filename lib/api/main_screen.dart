import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainScreen2 extends ConsumerWidget {
  const MainScreen2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod'),
        centerTitle: true,
      ),
    );
  }
}
