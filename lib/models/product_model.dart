class Product {
  final int id;
  final String name;
  double price;
  int quantity;
  final String imgPath;
  final String tag;
  bool isFavourite;

  Product(this.id, this.name, this.price, this.quantity, this.imgPath, this.tag,
      this.isFavourite);
}

List<Product> products = [
  Product(1, 'Naturel Red Apple', 4.99, 1, 'assets/images/apple.png',
      r'Frash Fruits & Vegetable', true),
  Product(2, 'Organic Bananas', 5.23, 1, 'assets/images/bananas.jpg',
      r'Frash Fruits & Vegetable', false),
  Product(3, 'Bell Pepper Red', 6.75, 1, 'assets/images/pepper.png',
      r'Frash Fruits & Vegetable', false),
  Product(4, 'Ginger', 8.99, 1, 'assets/images/ginger.png',
      r'Frash Fruits & Vegetable', false),
  Product(
      5, 'Beef Bone', 4.99, 1, 'assets/images/beef.png', r'Meat & Fish', false),
  Product(6, 'Broiler Chicken', 4.99, 1, 'assets/images/chicken.png',
      r'Meat & Fish', false),
];
