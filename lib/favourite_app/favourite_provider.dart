import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_tutorial/favourite_app/favourite_state.dart';

import 'items.dart';

final favouriteStateProvider =
    StateNotifierProvider<FavouriteNotifier, FavouriteState>((ref) {
      return FavouriteNotifier();
    });

class FavouriteNotifier extends StateNotifier<FavouriteState> {
  FavouriteNotifier()
    : super(FavouriteState(allItems: [], filterdItems: [], search: ''));

  void addItem() {
    List<Items> allItems = [
      Items(name: 'Apple', id: 1, isFavourite: true),
      Items(name: 'Banana', id: 2, isFavourite: false),
      Items(name: 'Orange', id: 3, isFavourite: true),
      Items(name: 'Grapes', id: 4, isFavourite: false),
      Items(name: 'Mango', id: 5, isFavourite: true),
      Items(name: 'Pineapple', id: 6, isFavourite: false),
      Items(name: 'Watermelon', id: 7, isFavourite: true),
      Items(name: 'Strawberry', id: 8, isFavourite: false),
      Items(name: 'Blueberry', id: 9, isFavourite: true),
      Items(name: 'Raspberry', id: 10, isFavourite: false),
      Items(name: 'Cherry', id: 11, isFavourite: true),
      Items(name: 'Peach', id: 12, isFavourite: false),
      Items(name: 'Kiwi', id: 13, isFavourite: true),
      Items(name: 'Lemon', id: 14, isFavourite: false),
      Items(name: 'Pear', id: 15, isFavourite: true),
      Items(name: 'Avocado', id: 16, isFavourite: false),
      Items(name: 'Pomegranate', id: 17, isFavourite: true),
      Items(name: 'Plum', id: 18, isFavourite: false),
    ];
    state = state.copyWith(allItems: allItems.toList());
    state = state.copyWith(filterdItems: allItems.toList());
  }

  void filteredList(String search) {
    state = state.copyWith(filterdItems: _filterdItems(state.allItems, search));
   }
  }

  List<Items> _filterdItems(List<Items> allItems, String query) {
    if (query.isEmpty) {
      return allItems;
    }
    return allItems
        .where((item) =>
        item.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }
