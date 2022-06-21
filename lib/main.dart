import 'package:flutter/material.dart';

import 'core/presentation/app.dart';
import 'core/presentation/routes/app_router.gr.dart';
import 'injection.dart';

void main() async {
  await _appInitializer();
}

/// Initializes dependencies.
Future<void> _appInitializer() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();

  getIt.registerSingleton<AppRouter>(AppRouter());

  runApp(const App());
}
