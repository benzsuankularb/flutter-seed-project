import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mobile/constants/i18n/en_locale.dart';
import 'package:mobile/constants/i18n/th_locale.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();
  @override
  bool isSupported(Locale locale) =>
      AppLocalizations.supportedLanguageCodes.contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(AppLocalizations(locale));
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}

class AppLocalizations {
  static List<String> get supportedLanguageCodes =>
      _localizedValues.keys.toList();

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  final Locale locale;
  AppLocalizations(this.locale);

  // Modify this if need to add new language.
  static Map<String, Map<String, String>> _localizedValues = {
    'en': EN_LOCALE,
    'th': TH_LOCALE,
  };

  // Below this line are methods which translate locale datas to actual string.
  String get title {
    return _localizedValues[locale.languageCode]['title'];
  }
}
