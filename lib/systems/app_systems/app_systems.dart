import 'package:mobx_system/mobx_system.dart';

import 'ready_on_start_system.dart';

class AppSystems extends Feature {
  @override
  List<System> createSystems() {
    return [
      ReadyOnStartSystem(),
    ];
  }
}
