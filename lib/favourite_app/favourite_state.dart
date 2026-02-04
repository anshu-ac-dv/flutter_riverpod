import 'package:flutter_riverpod_tutorial/favourite_app/items.dart';

class FavouriteState {
  final List<Items> allItems;
  final List<Items> filterdItems;
  final String search;

  FavouriteState({
    required this.allItems,
    required this.filterdItems,
    required this.search,
  });
  FavouriteState copyWith({
    List<Items>? allItems,
    List<Items>? filterdItems,
    String? search,
  }) {
    return FavouriteState(
      allItems: allItems ?? this.allItems,
      filterdItems: filterdItems ?? this.filterdItems,
      search: search ?? this.search,
    );
  }
}
