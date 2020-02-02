import 'package:flutter_driver/flutter_driver.dart';

extension SerializableFinderExtensions on SerializableFinder {
  SerializableFinder childByValue(dynamic key) =>
      find.descendant(of: this, matching: find.byValueKey(key));

  SerializableFinder childByTooltip(String message) =>
      find.descendant(of: this, matching: find.byTooltip(message));

  SerializableFinder childBySemanticsLabel(Pattern label) =>
      find.descendant(of: this, matching: find.bySemanticsLabel(label));

  SerializableFinder childByType(String type) =>
      find.descendant(of: this, matching: find.byType(type));
}

extension FlutterDriverExtensions on FlutterDriver {
  FlutterDriverNode get node => FlutterDriverNode.fromDriver(this);
}

class FlutterDriverNode {
  FlutterDriver driver;
  SerializableFinder finder;

  FlutterDriverNode.fromDriver(this.driver);

  FlutterDriverNode._({this.driver, this.finder});

  FlutterDriverNode childByValue(dynamic key) {
    return FlutterDriverNode._(
      driver: driver,
      finder: finder == null ? find.byValueKey(key) : finder.childByValue(key),
    );
  }

  FlutterDriverNode childByTooltip(String message) {
    return FlutterDriverNode._(
      driver: driver,
      finder: finder == null
          ? find.byTooltip(message)
          : finder.childByTooltip(message),
    );
  }

  FlutterDriverNode childByType(String type) {
    return FlutterDriverNode._(
      driver: driver,
      finder: finder == null ? find.byType(type) : finder.childByType(type),
    );
  }

  FlutterDriverNode childBySemanticsLabel(Pattern label) {
    return FlutterDriverNode._(
      driver: driver,
      finder: finder == null
          ? find.bySemanticsLabel(label)
          : finder.childBySemanticsLabel(label),
    );
  }

  Future<void> tap({Duration timeout = Duration.zero}) async {
    driver.tap(finder, timeout: timeout);
  }

  Future<void> exist({Duration timeout = Duration.zero}) async {
    await driver.waitFor(finder, timeout: timeout);
  }

  Future<String> text({Duration timeout = Duration.zero}) async {
    return await driver.getText(finder, timeout: timeout);
  }
}
