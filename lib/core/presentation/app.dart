import 'package:flutter/material.dart';
import 'package:stock_market_test/core/presentation/routes/app_router.gr.dart';
import 'package:stock_market_test/core/presentation/themes/app_themes.dart';

import '../../injection.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: appThemeData,
      routerDelegate: getIt<AppRouter>().delegate(),
      routeInformationParser: getIt<AppRouter>().defaultRouteParser(),
      debugShowCheckedModeBanner: false,
    );
  }
}
