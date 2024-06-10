import 'product.dart';

class Order {
  String orderId;
  List<Product> products;
  DateTime orderDate;
  double totalPrice;

  Order({
    required this.orderId,
    required this.products,
    required this.orderDate,
  }) : totalPrice = products.fold(0, (sum, item) => sum + item.price);

  void displayDetails() {
    print('Order ID: $orderId');
    print('Order Date: ${orderDate.toIso8601String()}');
    print('Products:');
    for (var product in products) {
      print('  - ${product.name} (\$${product.price.toStringAsFixed(2)})');
    }
    print('Total Price: \$${totalPrice.toStringAsFixed(2)}');
  }
}
