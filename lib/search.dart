import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_tutorial/search_provider.dart';

// This is a stateless widget for riverpord
class Search extends ConsumerWidget {
  const Search({super.key});

  @override
  // Creating a build method for the class
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
              // Creating a onChanged method for the text field
              onChanged: (value) {
                // Calling the search method for the class and passing the value as an argument
                ref.watch(searchProvider.notifier).search(value);
              },
            ),
          ),
          // Creating a Consumer widget for the text field
          Consumer(
            builder: (context, ref, child) {
              // Calling the watch method for the class and passing the query as an argument
              final SearchProvider = ref.watch(searchProvider);
              // Returning the text field with the value of the query
              return Text(SearchProvider.search);
            },
          ),
          // Creating a Consumer widget for the switch
          Consumer(
            builder: (context, ref, child) {
              // Calling the watch method for the class and passing the query as an argument
              final SearchProvider = ref.watch(searchProvider);
              // Returning the switch with the value of the query
              return Switch(
                // Creating a onChanged method for the switch
                value: SearchProvider.isLoading,
                // Creating a onChanged method for the switch
                onChanged: (value) {
                  // Calling the isLoading method for the class and passing the value as an argument
                  ref.watch(searchProvider.notifier).isLoading(value);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
