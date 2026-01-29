import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_tutorial/search_provider.dart';

// This is a stateless widget for riverpord
class Search extends ConsumerWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(80.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onChanged: (value){
                ref.watch(searchProvider.notifier).search(value);
              },
            ),
          ),
          Consumer(builder: (context, ref, child){
            final SearchProvider = ref.watch(searchProvider);
            return Text(SearchProvider.search);
          }),
          Consumer(builder: (context, ref, child){
            final SearchProvider = ref.watch(searchProvider);
            return Switch(
              value: SearchProvider.isLoading,
              onChanged: (value){
                ref.watch(searchProvider.notifier).isLoading(value);
              },
            );
          })
        ],
      ),
    );
  }
}
