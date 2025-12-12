class FoodItemModel {
  final String imageUrl;
  final String name;
  final double price;
  final bool isFavorite;

  FoodItemModel({
    required this.imageUrl,
    required this.name,
    required this.price,
    this.isFavorite = false,
  });

  FoodItemModel copyWith({
    String? imageUrl,
    String? name,
    double? price,
    bool? isFavorite,
  }) {
    return FoodItemModel(
      imageUrl: imageUrl ?? this.imageUrl,
      name: name ?? this.name,
      price: price ?? this.price,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}

List<FoodItemModel> food = [
  FoodItemModel(
    imageUrl:
        'https://searafoodsme.com/wp-content/uploads/2022/04/Beef-Burger1080x720px.jpg',
    name: 'Classic Beef Burger',
    price: 6.5,
  ),
  FoodItemModel(
    imageUrl:
        'https://www.sargento.com/assets/Uploads/Recipe/Image/burger_0__FocusFillWyIwLjAwIiwiMC4wMCIsODAwLDQ3OF0_CompressedW10.jpg',
    name: 'Cheese Burger',
    price: 7.5,
  ),
  FoodItemModel(
    imageUrl:
        'https://www.francoislambert.one/cdn/shop/articles/mac_poulet_corn_flakes.webp?v=1723557298',
    name: 'Crispy Chicken Burger',
    price: 9.0,
  ),
  FoodItemModel(
    imageUrl:
        'https://media-cdn.tripadvisor.com/media/photo-s/1c/cd/b0/1b/double-gorilla-burger.jpg',
    name: 'Double Beef Burger',
    price: 12.0,
  ),
];
