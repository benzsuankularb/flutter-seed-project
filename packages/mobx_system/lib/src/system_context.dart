part of 'system.dart';

class SystemContext {
  final Map<String, dynamic> args;
  final System system;
  final Dependencies dependencies;

  SystemContext(
    this.system, {
    Map<String, dynamic> args,
    Dependencies dependencies,
  })  : assert(system != null),
        args = args ?? {},
        dependencies = dependencies ?? Dependencies();

  void start() async {
    system._setContext(this);
    await system._createDependenciesAsync(dependencies);
    system._loadDependencies(dependencies);
    system._setUp();
    system._start();
  }
}
