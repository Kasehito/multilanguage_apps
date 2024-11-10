import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LanguageController extends GetxController {
  var locale = const Locale('en', 'US').obs;

  void changeLanguage(String languageCode, String countryCode) {
    locale.value = Locale(languageCode, countryCode);
    Get.updateLocale(locale.value);
  }
}