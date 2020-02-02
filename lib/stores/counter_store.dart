import 'package:mobx/mobx.dart';

part 'counter_store.g.dart';

class CounterStore = _CounterStore with _$CounterStore;

abstract class _CounterStore with Store {
  _CounterStore({this.count = 0});

  @observable
  int count;

  @action
  void increase() {
    count++;
  }

  @action
  void reset() {
    count = 0;
  }
}
