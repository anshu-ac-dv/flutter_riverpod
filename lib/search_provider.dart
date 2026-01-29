import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchProvider = StateNotifierProvider<SearchNotifier, SearchState>((
  ref,
) {
  return SearchNotifier();
});

// Creating a class for state handling and notifier
class SearchNotifier extends StateNotifier<SearchState> {
  // Creating a constructor for the class and calling the super constructor
  SearchNotifier() : super(SearchState(search: '', isLoading: false));

  // Creating a method for the class
  void search(String query) {
    // Calling the copy constructor for the class and passing the query as an argument
    state = state.copyWith(search: query);
  }

  void isLoading(bool isLoading) {
    // Calling the copy constructor for the class and passing the query as an argument
    state = state.copyWith(isLoading: isLoading);
  }
}

// Creating another class for multiple state handling
class SearchState {
  // Creating a variable for the class
  final String search;
  // Creating a variable for the class
  final bool isLoading;

  // Creating a constructor for the class
  SearchState({required this.search, required this.isLoading});

  // Creating a copy constructor for the class
  SearchState copyWith({
    // Creating a variable for the class and calling the super constructor
    String? search,
    // Creating a variable for the class and calling the super constructor
    bool? isLoading,
  }) {
    // Returning the class with the new values
    return SearchState(
      // If the new value is null, return the old value
      // If the new value is not null, return the new value
      search: search ?? this.search,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
