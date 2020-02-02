import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/constants/styles/theme_data.dart';
import 'package:mobile/views/enhances/i18n.dart';
import 'package:mobile/views/pages/home_page.dart';

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizationsDelegate(),
        DefaultMaterialLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLanguageCodes.map(
        (code) => Locale(code),
      ),
      theme: defaultThemeData,
      initialRoute: "/",
      onGenerateRoute: (routeSettings) {
        switch (routeSettings.name) {
          case "lesson":
          // return MaterialPageRoute(
          //   builder: (context) => SomePage(),
          //   fullscreenDialog: true,
          // );
          default:
            return null;
        }
      },
      home: HomePage(),
    );
  }
}
