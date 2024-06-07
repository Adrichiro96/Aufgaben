class Product {
  String name;
  String productId;
  double price;
  int stock;

  Product({
    required this.name,
    required this.productId,
    required this.price,
    required this.stock,
  });

  void displayDetails() {
    print('Name: $name');
    print('Product ID: $productId');
    print('Price: \$${price.toStringAsFixed(2)}');
    print('Stock: $stock');
  }

  void updateStock(int quantity) {
    stock += quantity;
  }
}
