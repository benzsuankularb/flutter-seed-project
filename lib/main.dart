import 'package:mobile/stores/main_store_injector.dart';
import 'package:mobile/systems/main_system.dart';
import 'package:mobile/views/main_app.dart';
import 'package:mobx_system/mobx_system.dart';

main() {
  RootApp(
    app: () => MainApp(),
    system: () => MainSystem(),
    injector: MainStoresInjector(),
  );
}
