import 'package:test/test.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'utils/extensions.dart';
// import 'package:flutter_test/flutter_test.dart' show findsNWidgets;

void main() {
  group('App', () {
    FlutterDriver driver;
    FlutterDriverNode node;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
      node = driver.node;
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      await Future.delayed(Duration(milliseconds: 500));

      if (driver != null) {
        driver.close();
      }
    });

    test('Test something', () async {
      // await node.childByValue('example-key').exist();
    });
  });
}
