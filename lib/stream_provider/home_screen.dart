import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_tutorial/stream_provider/stream_provider.dart';

class HomeScreen5 extends ConsumerWidget {
  const HomeScreen5({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(stockPriceProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Provider'),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: provider.when(
          data: (price) => Text(price.toStringAsFixed(2).toString()),
          error: (error, stack) => Text(error.toString()),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
    );
  }
}
