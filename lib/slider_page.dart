import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_tutorial/slider_provider.dart';

class SliderPage extends ConsumerWidget {
  const SliderPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer(
            builder: (context, ref, child) {
              final ProviderSlider = ref.watch(sliderProvider);
              return Container(
                height: 200,
                width: 200,
                color: Colors.blue.withOpacity(ProviderSlider),
              );
            },
          ),
          Consumer(
            builder: (context, ref, child) {
              final ProviderSlider = ref.watch(sliderProvider);
              return Slider(
                value: ProviderSlider,
                onChanged: (value) {
                  ref.read(sliderProvider.notifier).state = value;
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
