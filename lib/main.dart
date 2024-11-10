import 'package:flutter/material.dart';
import 'homepage.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'controller/language_controller.dart';

void main() {
  Get.put(LanguageController());
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Get.find<LanguageController>().locale.value,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const Homepage(),
    );
  }
}
