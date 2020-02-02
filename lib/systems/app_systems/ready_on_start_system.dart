import 'package:mobile/stores/app_store.dart';
import 'package:mobx_system/mobx_system.dart';

class ReadyOnStartSystem extends System {
  AppStore appStore;

  @override
  void loadDependencies(Dependencies dependencies) {
    appStore = dependencies.get<AppStore>();
  }

  @override
  void start() {
    appStore.ready();
  }
}
