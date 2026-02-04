class Items {
  final String name;
  final int id;
  final bool isFavourite;

  Items({required this.name, required this.id, required this.isFavourite});

  Items copyWith({String? name, int? id, bool? isFavourite}) {
    return Items(
      name: name ?? this.name,
      id: id ?? this.id,
      isFavourite: isFavourite ?? this.isFavourite,
    );
  }
}
