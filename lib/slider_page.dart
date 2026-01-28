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
              final slider = ref.watch(
                sliderProvider.select((state) => state.showPassword),
              );
              return InkWell(
                onTap: () {
                  final Slider = ref.read(sliderProvider.notifier);
                  Slider.state = Slider.state.copyWith(showPassword: !slider);
                },
                child: Container(
                  height: 200,
                  width: 200,
                  child: Center(
                    child: slider
                        ? Icon(Icons.ice_skating)
                        : Icon(Icons.snowboarding),
                  ),
                ),
              );
            },
          ),
          Consumer(
            builder: (context, ref, child) {
              final ProviderSlider = ref.watch(
                sliderProvider.select((state) => state.sliderValue),
              );
              return Container(
                height: 200,
                width: 200,
                color: Colors.blue.withOpacity(ProviderSlider),
              );
            },
          ),
          Consumer(
            builder: (context, ref, child) {
              final ProviderSlider = ref.watch(
                sliderProvider.select((state) => state.sliderValue),
              );
              return Slider(
                value: ProviderSlider,
                onChanged: (value) {
                  final Slider = ref.read(sliderProvider.notifier);
                  Slider.state = Slider.state.copyWith(sliderValue: value);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
