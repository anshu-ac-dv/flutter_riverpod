import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchProvider = StateNotifierProvider<SearchNotifier, SearchState>((ref) {
  return SearchNotifier();
});

// Creating a class for state handling and notifier
class SearchNotifier extends StateNotifier<SearchState> {
  // Creating a constructor for the class and calling the super constructor
  SearchNotifier() : super(SearchState(search: ''));

  // Creating a method for the class
  void search(String query) {
    // Calling the copy constructor for the class and passing the query as an argument
    state = state.copyWith(search: query);
  }
}

// Creating another class for multiple state handling
class SearchState {
  String search;

  // Creating a constructor for the class
  SearchState({required this.search});

  // Creating a copy constructor for the class
  SearchState copyWith({String? search}) {
    return SearchState(search: search ?? this.search);
  }

}
