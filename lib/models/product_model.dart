class Product {
  final int id;
  final String name;
  double price;
  int quantity;
  final String imgPath;

  Product(this.id, this.name, this.price, this.quantity, this.imgPath);
}

List<Product> products = [
  Product(1, 'Naturel Red Apple', 4.99, 1, 'assets/images/apple.png'),
  Product(2, 'Organic Bananas', 5.23, 1, 'assets/images/bananas.jpg'),
  Product(3, 'Bell Pepper Red', 6.75, 1, 'assets/images/pepper.png'),
  Product(4, 'Ginger', 8.99, 1, 'assets/images/ginger.png'),
  Product(5, 'Beef Bone', 4.99, 1, 'assets/images/beef.png'),
  Product(6, 'Broiler Chicken', 4.99, 1, 'assets/images/chicken.png'),
];
