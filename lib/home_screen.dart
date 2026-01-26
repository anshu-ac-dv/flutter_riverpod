import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

final hello = Provider<String>((ref) {
  return 'Hello';
});

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: const Text('Home'),
        centerTitle: true,
      ),
    );
  }
}
