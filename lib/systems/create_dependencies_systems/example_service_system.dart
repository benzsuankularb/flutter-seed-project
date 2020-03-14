import "package:mobx_system/mobx_system.dart";

class ExampleServiceInitialize extends System {
  @override
  createDependencies(Dependencies dependencies) {}

  @override
  bool filter(Map<String, dynamic> args) {
    return true;
  }
}
