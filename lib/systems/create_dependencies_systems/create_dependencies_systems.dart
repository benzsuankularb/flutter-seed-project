import 'package:mobx_system/mobx_system.dart';

import 'example_service_system.dart';

class CreateDependenciesSystems extends Feature {
  @override
  List<System> createSystems() {
    return [
      // To add a new external dependency
      // Add the new system to initialize dependency here.
      ExampleServiceInitialize(),
    ];
  }
}
