import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_tutorial/stream_provider/stream_provider.dart';

class HomeScreen5 extends ConsumerWidget {
  const HomeScreen5({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Provider'),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Consumer(
        builder: (context, ref, child) {
          final provider = ref.watch(stockPriceProvider);
          return Center(
            child: provider.when(
              skipLoadingOnRefresh: false,
              skipLoadingOnReload: false,
              data: (price) => Text(price.toStringAsFixed(2).toString()),
              error: (error, stack) => TextButton(
                onPressed: () {
                  ref.invalidate(stockPriceProvider);
                },
                child: Text(error.toString()),
              ),
              loading: () => const CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}
