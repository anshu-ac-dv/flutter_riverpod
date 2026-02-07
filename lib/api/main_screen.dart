import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_tutorial/api/models/future_model.dart';

class MainScreen2 extends ConsumerWidget {
  const MainScreen2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final json = {
            {
              "userId": 1,
              "id": 1,
              "title":
                  "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
              "body":
                  "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto",
            },
          };
          FutureModel futureModel = FutureModel.fromJson(json);
          print(futureModel.title);
        },
        child: const Icon(Icons.add),
      ),
      body: const Column(
        children: [
          Text(''),
        ],
      ),
    );
  }
}
