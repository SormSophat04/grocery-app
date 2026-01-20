import 'package:get/get.dart';
import 'package:groceries_app/features/domain/cart_item.dart';
import 'package:groceries_app/features/presentation/product/models/product_model.dart';

class CartController extends GetxController {
  var cartItems = <CartItem>[].obs;

  @override
  void onInit() {
    super.onInit();
    final products = [
      ProductModel(
        id: 1,
        name: 'Pomegranate',
        price: '4.99',
        image: 'assets/images/pomegranate-11.png',
        status: '20% Off',
        unit: '1kg',
        fav: true,
        rate: 4.5,
        description: 'Organic Mountain works as a seller for many organic growers of organic lemons.',
      ),
      ProductModel(
        id: 2,
        name: 'Apple',
        price: '3.99',
        image: 'assets/images/pineapple-pieces.png',
        status: 'New',
        unit: '1kg',
        fav: false,
        rate: 4.5,
        description: 'Organic Mountain works as a seller for many organic growers of organic lemons.',
      ),
      ProductModel(
        id: 4,
        name: 'Orange',
        price: '5.49',
        image: 'assets/images/Group 247 (1).png',
        status: '5% Off',
        unit: '1kg',
        fav: false,
        rate: 4.5,
        description: 'Organic Mountain works as a seller for many organic growers of organic lemons.',
      ),
    ];

    for (var product in products) {
      addToCart(product);
    }
  }

  void addToCart(ProductModel product) {
    final existingItemIndex =
        cartItems.indexWhere((item) => item.product.name == product.name);

    if (existingItemIndex != -1) {
      cartItems[existingItemIndex].quantity.value++;
    } else {
      cartItems.add(CartItem(product: product, quantity: 1));
    }
  }

  void removeFromCart(ProductModel product) {
    cartItems.removeWhere((item) => item.product.name == product.name);
  }

  void increment(ProductModel product) {
    final existingItemIndex =
        cartItems.indexWhere((item) => item.product.name == product.name);
    if (existingItemIndex != -1) {
      cartItems[existingItemIndex].quantity.value++;
    }
  }

  void decrement(ProductModel product) {
    final existingItemIndex =
        cartItems.indexWhere((item) => item.product.name == product.name);
    if (existingItemIndex != -1 && cartItems[existingItemIndex].quantity.value > 1) {
      cartItems[existingItemIndex].quantity.value--;
    }
  }

  int getQuantity(ProductModel product) {
    final existingItemIndex =
        cartItems.indexWhere((item) => item.product.name == product.name);
    if (existingItemIndex != -1) {
      return cartItems[existingItemIndex].quantity.value;
    }
    return 0;
  }
}
