import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stock_market_test/core/di/providers.dart';
import 'package:stock_market_test/core/presentation/themes/app_colors.dart';
import 'package:stock_market_test/core/presentation/themes/app_themes.dart';

class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      theme: appThemeData,
      routeInformationParser: ref.read(autoRouterProvider).defaultRouteParser(),
      routerDelegate: ref.read(autoRouterProvider).delegate(),
      debugShowCheckedModeBanner: false,
    );
  }
}
