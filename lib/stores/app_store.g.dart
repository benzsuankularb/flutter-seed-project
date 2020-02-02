// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppStore on _AppStore, Store {
  final _$isReadyAtom = Atom(name: '_AppStore.isReady');

  @override
  bool get isReady {
    _$isReadyAtom.context.enforceReadPolicy(_$isReadyAtom);
    _$isReadyAtom.reportObserved();
    return super.isReady;
  }

  @override
  set isReady(bool value) {
    _$isReadyAtom.context.conditionallyRunInAction(() {
      super.isReady = value;
      _$isReadyAtom.reportChanged();
    }, _$isReadyAtom, name: '${_$isReadyAtom.name}_set');
  }

  final _$_AppStoreActionController = ActionController(name: '_AppStore');

  @override
  void ready() {
    final _$actionInfo = _$_AppStoreActionController.startAction();
    try {
      return super.ready();
    } finally {
      _$_AppStoreActionController.endAction(_$actionInfo);
    }
  }
}
