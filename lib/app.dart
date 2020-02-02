// DON'T EDIT THIS FILE.
// THIS IS THE BOILERPLATE CODE TO START THE APP.
// SEE `main.dart` TO START CODING.

import 'package:mobx_system/mobx_system.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

List<Provider> _providers = [];
Map<String, dynamic> _args = {};
Dependencies _dependencies = Dependencies();
SystemContext _systemContext;

void setArgs(Map<String, dynamic> args) {
  _args = args;
}

void addCrossDependency<T>(T service) {
  // Add to store provider
  var provider = Provider<T>(
    create: (_) => service,
  );
  _providers.add(provider);

  // Add to dependencies so we can use later in side systems
  _dependencies.add<T>(service);
}

void startSystem(System Function() builder) async {
  _systemContext = SystemContext(
    builder(),
    dependencies: _dependencies,
    args: _args,
  );
  _systemContext.start();
}

void startApp(Widget Function() builder) {
  runApp(
    MultiProvider(
      providers: _providers,
      child: builder(),
    ),
  );
}
