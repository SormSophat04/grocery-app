import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/localization/localization_service.dart';

class SwitchLang extends StatelessWidget {
  const SwitchLang({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('change_language'.tr),
      ),
      body: Column(
        children: [
          RadioListTile<Locale>(
            title: const Text('English'),
            value: LocalizationService.enUS,
            groupValue: Get.locale,
            onChanged: (Locale? value) {
              if (value != null) {
                Get.updateLocale(value);
              }
            },
          ),
          RadioListTile<Locale>(
            title: const Text('ខ្មែរ'),
            value: LocalizationService.kmKH,
            groupValue: Get.locale,
            onChanged: (Locale? value) {
              if (value != null) {
                Get.updateLocale(value);
              }
            },
          ),
        ],
      ),
    );
  }
}
