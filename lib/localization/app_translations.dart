import 'package:get/get.dart';

class AppTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'enUS': {
          'title': 'Advanced Localization',
          'hello': 'Hello',
          'change_language': 'Change Language',
        },
        'kmKH': {
          'title': 'ប្រព័ន្ធភាសាកម្រិតខ្ពស់',
          'hello': 'សួស្តី',
          'change_language': 'ប្តូរភាសា',
        },
      };
}
