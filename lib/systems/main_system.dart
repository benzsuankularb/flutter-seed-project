import 'package:mobile/systems/reset_count_example_system.dart';
import 'package:mobx_system/mobx_system.dart';

import 'app_systems/app_systems.dart';
import 'create_dependencies_systems/create_dependencies_systems.dart';

class MainSystem extends Feature {
  @override
  List<System> createSystems() {
    return [
      CreateDependenciesSystems(),
      AppSystems(),
      ResetCountExampleSystem(), // This is a sample system.
      // ExampleSystem(),
    ];
  }
}
