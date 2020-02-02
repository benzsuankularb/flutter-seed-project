part of 'system.dart';

abstract class Feature extends System {
  List<System> systems;

  Feature() {
    systems = createSystems() ?? [];
  }

  List<System> createSystems();

  @override
  void _setContext(SystemContext context) {
    super._setContext(context);
    systems.forEach((system) => system._setContext(context));
  }

  @override
  Future _createDependenciesAsync(Dependencies dependencies) async {
    return Future.wait([
      super._createDependenciesAsync(dependencies),
      ...systems.map((system) => system._createDependenciesAsync(dependencies)),
    ]);
  }

  @override
  void _loadDependencies(Dependencies dependencies) {
    super._loadDependencies(dependencies);
    systems.forEach((system) => system._loadDependencies(dependencies));
  }

  @override
  void _setUp() {
    super._setUp();
    systems.forEach((system) => system._setUp());
  }

  @override
  void _start() {
    super._start();
    systems.forEach((system) => system._start());
  }
}
