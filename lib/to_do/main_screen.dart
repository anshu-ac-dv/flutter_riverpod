import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_tutorial/to_do/item_provider.dart';

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({super.key});

  @override
  ConsumerState<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final items = ref.watch(itemProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade500,
        elevation: 0,
        leading: const Icon(Icons.menu, color: Colors.white),
        title: const Text('To Do', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.white),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(itemProvider.notifier).addItem('New Item');
        },
        child: const Icon(Icons.add),
      ),
      body: items.isEmpty
          ? const Center(
              child: Text(
                'No items, Please add new items using the button below.',
              ),
            )
          : ListView.builder(
              itemCount: ref.watch(itemProvider).length,
              itemBuilder: (context, index) {
                final item = ref.watch(itemProvider)[index];
                return ListTile(
                  title: Text(item.name),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          ref.watch(itemProvider.notifier).editItem(item.id, 'Edited Item');
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          ref.read(itemProvider.notifier).removeItem(item.id);
                        },
                      ),

                    ],
                  ),
                );
              },
            ),
    );
  }
}
