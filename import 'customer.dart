import 'customer.dart';
import 'product.dart';
import 'order.dart';

void main() {
  Product product1 =
      Product(name: 'Laptop', productId: 'P001', price: 999.99, stock: 10);
  Product product2 =
      Product(name: 'Smartphone', productId: 'P002', price: 499.99, stock: 20);

  Order order1 = Order(
    orderId: 'B001',
    products: [product1, product2],
    orderDate: DateTime.now(),
  );

  Customer customer1 = Customer(
    name: 'John Doe',
    customerId: 'C001',
    email: 'john.doe@example.com',
    orders: [order1],
  );

  product1.displayDetails();
  product2.displayDetails();
  order1.displayDetails();
  customer1.displayDetails();
}
