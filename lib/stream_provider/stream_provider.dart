import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:math';

final stockPriceProvider = StreamProvider<double>((ref) async* {
  final random = Random();
  double currentPrice = 100.0;

  while (true) {
    await Future.delayed(const Duration(seconds: 1));
    currentPrice += random.nextDouble() * 10 - 5;
    yield double.parse(currentPrice.toStringAsFixed(5));
    throw ('Error In Internet');
  }
});
