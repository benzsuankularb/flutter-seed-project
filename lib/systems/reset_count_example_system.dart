import 'package:mobile/stores/counter_store.dart';
import 'package:mobx_system/mobx_system.dart';

class ResetCountExampleSystem extends System {
  CounterStore counterStore;

  @override
  void loadDependencies(Dependencies dependencies) {
    counterStore = dependencies.get<CounterStore>();
  }

  @override
  void setUp() {
    reactionWhen(
      (_) => counterStore.count == 10,
      () => counterStore.reset(),
    );
  }

  @override
  void start() {
    // Usually we shouldn't use this.
    // Because we already AppStore.isReady.
    // We can setup the system to react on that.
  }
}
