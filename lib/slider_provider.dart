import 'package:flutter_riverpod/flutter_riverpod.dart';

final sliderProvider = StateProvider<double>((ref) {
  return 0.0;
});

class AppState {
  double sliderValue;
  bool showPassword;

  AppState({required this.sliderValue, required this.showPassword});

  AppState copyWith({double? sliderValue, bool? showPassword}) {
    return AppState(
      sliderValue: sliderValue ?? this.sliderValue,
      showPassword: showPassword ?? this.showPassword,
    );
  }
}
