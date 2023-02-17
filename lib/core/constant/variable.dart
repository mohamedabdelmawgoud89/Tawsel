import 'package:tawsel/model/customer.dart';
import 'package:tawsel/model/order.dart';

import '../../model/product.dart';

class Variable {
  static const products = 'المنتجات';
  static const productDetails = 'تفاصيل الطلب';
  static const addProduct = 'إضافة منتج آخر';
  static const productName = 'بيتزا شيش طاووق-حار';
  static const deliverFees = 40;
  static const totalPrice = 0;
  static const priceText = ':السعر';
  static const price = '250 ج.م';
  static List<Customer> customerList = [
    Customer(
        name: 'ابراهيم خالد احمد',
        address: 'شارع 44 -السبتية-القاهرة',
        phoneNumber: '01452202514',
        paymentMethod: 'تم الدفع بالفيزا'
    )
  ];
  static List<Product> productList = [
    Product(
        productName: 'بيتزاإيطالي-جبن',
        productPrice: 60
    ),
    Product(
        productName: 'كريب شيش طاووق',
        productPrice: 60
    ),
    Product(
        productName: 'برجر لحوم-حار',
        productPrice:60
    ),
  ];

  static Order order = Order(
      orderNumber:2514,
      customer: customerList[0],
      product:productList,
      paymentMethod:"تم الدفع بالفيزا",
      price: 30,
      date: DateTime.now(),
      orderStatus: 'قيد التوصيل'

  );
}
