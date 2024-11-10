import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'controller/language_controller.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final languageController = Get.find<LanguageController>();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context)!.chooseLanguage,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(AppLocalizations.of(context)!.helloWorld),
            Text(AppLocalizations.of(context)!.description),
            const SizedBox(height: 10),
            DropdownButton(
                items: const [
                  DropdownMenuItem(child: Text('English'), value: 'en'),
                  DropdownMenuItem(
                      child: Text('Bahasa Indonesia'), value: 'id'),
                  DropdownMenuItem(child: Text('日本語'), value: 'ja'),
                ],
                onChanged: (value) {
                  languageController.changeLanguage(value!, 'US');
                  languageController.changeLanguage(value, 'ID');
                  languageController.changeLanguage(value, 'JP');
                }),
          ],
        ),
      ),
    );
  }
}
