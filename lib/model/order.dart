import 'customer.dart';
import 'product.dart';

class Order{
  final int orderNumber;
  Customer customer;
  List<Product> product;
  final String paymentMethod;
  final double price;
  final DateTime date;
  final String orderStatus;


  Order({
    required this.orderNumber,
    required this.customer,
    required this.product,
    required this.paymentMethod,
    required this.price,
    required this.date,
    required this.orderStatus,
  });
}