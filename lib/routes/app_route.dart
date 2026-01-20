import 'package:get/get.dart';
import 'package:groceries_app/features/presentation/auth/view/login_view.dart';
import 'package:groceries_app/features/presentation/cart/binding/cart_binding.dart';
import 'package:groceries_app/features/presentation/cart/view/cart_view.dart';
import 'package:groceries_app/features/presentation/category/category_view.dart';
import 'package:groceries_app/features/presentation/favorite/favorite_view.dart';
import 'package:groceries_app/features/presentation/home/home_view.dart';
import 'package:groceries_app/features/presentation/home/search_view.dart';
import 'package:groceries_app/features/presentation/order/view/my_order_view.dart';
import 'package:groceries_app/features/presentation/product/view/product_view.dart';
import 'package:groceries_app/features/presentation/profile/view/profile_view.dart';
import 'package:groceries_app/features/presentation/setting/view/switch_lang.dart';
import 'package:groceries_app/features/splash/splash_view.dart';
import 'package:groceries_app/routes/app_page.dart';

class AppRoute {
  static final routes = [
    GetPage(name: AppPage.splash, page: () => const SplashView()),
    GetPage(name: AppPage.login, page: () => const LoginScreen()),
    GetPage(name: AppPage.language, page: () => const SwitchLang()),
    GetPage(name: AppPage.home, page: () => const HomeView()),
    GetPage(name: AppPage.product, page: () => const ProductView()),
    GetPage(name: AppPage.category, page: () => const CategoryView()),
    GetPage(name: AppPage.search, page: () => const SearchView()),
    GetPage(
        name: AppPage.cart,
        page: () => const CartView(),
        binding: CartBinding()),
    GetPage(name: AppPage.profile, page: () => const ProfileView()),
    GetPage(name: AppPage.order, page: () => const MyOrderView()),
    GetPage(name: AppPage.favorite, page: () => const FavoriteView()),
    // GetPage(name: AppPage.checkout, page: () => const CheckoutView()),
  ];
}
