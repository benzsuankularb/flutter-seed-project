import 'package:get_it/get_it.dart';

part 'system_feature.dart';
part 'system_dependencies.dart';
part 'system_context.dart';

abstract class System {
  SystemContext _context;

  void _setContext(SystemContext context) {
    _context = context;
  }

  Future _createDependenciesAsync(Dependencies dependencies) async {
    if (filter(_context.args)) {
      return createDependenciesAsync(dependencies);
    }
  }

  void _loadDependencies(Dependencies dependencies) {
    if (filter(_context.args)) {
      return loadDependencies(dependencies);
    }
  }

  void _setUp() {
    if (filter(_context.args)) {
      setUp();
    }
  }

  void _start() {
    if (filter(_context.args)) {
      start();
    }
  }

  bool filter(Map<String, dynamic> args) => true;
  Future createDependenciesAsync(Dependencies dependencies) async {}
  void loadDependencies(Dependencies dependencies) {}
  void setUp() {}
  void start() {}
}
