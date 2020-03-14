import 'package:mobx_system/mobx_system.dart';
import 'package:mobile/stores/app_store.dart';
import 'package:mobile/stores/counter_store.dart';

class MainStoresInjector extends CorssDependenciesInjector {
  @override
  injectDependencies(void Function<T>(T value) inject) {
    inject(AppStore());
    inject(CounterStore());
  }
}
