import 'order.dart';

class Customer {
  String name;
  String customerId;
  String email;
  List<Order> orders;

  Customer({
    required this.name,
    required this.customerId,
    required this.email,
    required this.orders,
  });

  void displayDetails() {
    print('Name: $name');
    print('Customer ID: $customerId');
    print('Email: $email');
    print('Orders:');
    for (var order in orders) {
      print('  - Order ID: ${order.orderId}');
    }
  }

  void addOrder(Order order) {
    orders.add(order);
  }
}
