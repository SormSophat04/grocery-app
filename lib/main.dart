import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:groceries_app/features/presentation/cart/controller/cart_controller.dart';
import 'package:groceries_app/localization/app_translations.dart';
import 'package:groceries_app/localization/localization_service.dart';
import 'package:groceries_app/routes/app_route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(CartController(), permanent: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          translations: AppTranslation(),
          locale: LocalizationService.deviceLocale,
          fallbackLocale: LocalizationService.enUS,
          supportedLocales: LocalizationService.supportedLocales,
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          debugShowCheckedModeBanner: false,
          initialRoute: '/splash',
          getPages: AppRoute.routes,
        );
      },
    );
  }
}
