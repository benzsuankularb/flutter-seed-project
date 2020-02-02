part of 'system.dart';

class Dependencies {
  static String _getNoDependenciesMessage(Type type, {String key}) =>
      key == null
          ? "No dependency that is `${type.toString()}`"
          : "No dependency key `$key` that is `${type.toString()}`";

  final GetIt _getIt;

  Dependencies() : _getIt = GetIt.asNewInstance() {
    _getIt.allowReassignment = true;
  }

  T get<T>({String key}) {
    var value = _getIt.get<T>(key);
    assert(
      value != null,
      _getNoDependenciesMessage(T.runtimeType, key: key),
    );
    return value;
  }

  void add<T>(T value, {String instanceName}) {
    assert(value != null);
    _getIt.registerSingleton(value, instanceName: instanceName);
  }

  void addLazy<T>(T Function() builder, {String instanceName}) {
    assert(builder != null);
    _getIt.registerLazySingleton(builder, instanceName: instanceName);
  }
}
