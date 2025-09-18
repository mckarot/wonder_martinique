import 'package:wonders/common_libs.dart';

class LocaleSwitcher extends StatelessWidget with GetItMixin {
  LocaleSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = watchX((SettingsLogic s) => s.currentLocale);
    Future<void> handleSwapLocale() async {
      final newLocale = Locale(_getNextLocale(locale));
      await settingsLogic.changeLocale(newLocale);
    }

    return AppBtn.from(
        text: $strings.localeSwapButton, onPressed: handleSwapLocale, padding: EdgeInsets.all($styles.insets.sm));
  }

  String _getNextLocale(String? currentLocale) {
    // Cycle through: en -> fr -> zh -> en
    if (currentLocale == 'en') {
      return 'fr';
    } else if (currentLocale == 'fr') {
      return 'zh';
    } else {
      return 'en';
    }
  }
}
