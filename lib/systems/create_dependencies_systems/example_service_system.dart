import "package:mobx_system/mobx_system.dart";

class ExampleServiceInitialize extends System {
  // Why async?
  // Some services cannot initalized without async,
  // Else the main process will be blocked.
  //
  // After every dependencies (all systems) have been created,
  // The next life cycle method (loadDependencies) will be called.
  @override
  Future createDependenciesAsync(Dependencies dependencies) {
    // dependencies.add(
    //   value: ExampleService() // Eager initialize
    //   builder: (i) => ExampleService() // Lazy initialize
    // );
    return null;
  }

  // If `filter` return false, `createDependenciesAsync` will not be called
  // So that we can create the different dependencies for each profile.
  // Default is true if not override this method.
  @override
  bool filter(Map<String, dynamic> args) {
    return true;
  }
}
