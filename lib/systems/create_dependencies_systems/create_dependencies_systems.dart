import 'package:mobx_system/mobx_system.dart';

import 'example_service_system.dart';

class CreateDependenciesSystems extends Feature {
  @override
  List<System> createSystems() {
    return [
      ExampleServiceInitialize(),
    ];
  }
}
