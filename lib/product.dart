class Product {
  final String name;
  final double price;
  final String category;
  final String imageUrl;
  final double rating;

  Product({
    required this.name,
    required this.price,
    required this.category,
    required this.imageUrl,
    required this.rating,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['title'],
      price: json['price'].toDouble(),
      category: json['category'],
      imageUrl: json['image'],
      rating: json['rating']['rate'].toDouble(),
    );
  }
}
