import 'package:get/get.dart';
import 'package:groceries_app/features/presentation/cart/controller/cart_controller.dart';

class CartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CartController>(() => CartController());
  }
}