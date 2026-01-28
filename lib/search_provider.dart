import 'package:flutter_riverpod/flutter_riverpod.dart';

final stateProvider = StateNotifierProvider<SearchNotifier, String>((ref){
  return SearchNotifier();
});

class SearchNotifier extends StateNotifier<String>{
  SearchNotifier():super('');
}