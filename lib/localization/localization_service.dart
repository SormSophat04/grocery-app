import 'dart:ui';

class LocalizationService {
  static const enUS = Locale('en', 'US');
  static const kmKH = Locale('km', 'KH');

  static List<Locale> supportedLocales = [enUS, kmKH];

  static Locale get deviceLocale {
    Locale deviceLocale = PlatformDispatcher.instance.locale;
    if(deviceLocale.languageCode == 'km'){
      return kmKH;
    }
    return enUS;
  }
}