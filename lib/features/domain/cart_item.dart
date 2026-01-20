import 'package:get/get.dart';
import 'package:groceries_app/features/presentation/product/models/product_model.dart';

class CartItem {
  final ProductModel product;
  final RxInt quantity;

  CartItem({
    required this.product,
    int quantity = 1,
  }) : this.quantity = quantity.obs;
}
