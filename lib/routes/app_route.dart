import 'package:get/get_navigation/get_navigation.dart';
import 'package:groceries_app/features/presentation/auth/login_view.dart';
import 'package:groceries_app/features/splash/splash_view.dart';
import 'package:groceries_app/routes/app_page.dart';

class AppRoute {
  final routes = [
    GetPage(name: AppPage.splash, page: () => SplashView()),
    GetPage(name: AppPage.login, page: () => const LoginScreen()),
  ];
}
