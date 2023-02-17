import 'package:flutter/cupertino.dart';

import '../../core/constant/style.dart';
import '../../core/constant/variable.dart';
import '../../model/product.dart';

class ProductDetails extends StatelessWidget {
  ProductDetails({Key? key, required this.prodcutList}) : super(key: key);

  List<Product> prodcutList;

  @override
  Widget build(BuildContext context) {
    double totalPrice = 0;
    Variable.productList.forEach((element) {
      totalPrice += element.productPrice;
    });
    totalPrice = totalPrice + Variable.deliverFees;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 5,
        ),
        const Text(Variable.productDetails, style: Style.style1),
        const SizedBox(
          height: 5,
        ),
        const Text(Variable.products, style: Style.style1),
        const SizedBox(
          height: 5,
        ),
        ListView.builder(
            itemCount: Variable.productList.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(prodcutList[index].productName, style: Style.style2),
                    const SizedBox(
                      height: 5,
                    ),
                    Text('${prodcutList[index].productPrice} ج.م',
                        style: Style.style2),
                  ],
                )),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('السعر الكلي', style: Style.style2),
            Text('$totalPrice ج.م', style: Style.style1),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text('خدمة التوصيل', style: Style.style2),
            Text('${Variable.deliverFees} ج.م', style: Style.style1),
          ],
        ),
      ],
    );
  }
}
