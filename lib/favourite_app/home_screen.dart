import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_tutorial/favourite_app/favourite_provider.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final favouriteList = ref.watch(favouriteStateProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite App'),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onChanged: (value) {
                ref.read(favouriteStateProvider.notifier).filteredList(value);
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: favouriteList.filterdItems.length,
              itemBuilder: (context, index) {
                final item = favouriteList.filterdItems[index];
                return ListTile(
                  title: Text(item.name),
                  trailing: Icon(
                    item.isFavourite ? Icons.favorite : Icons.favorite_border,
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(favouriteStateProvider.notifier).addItem();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
