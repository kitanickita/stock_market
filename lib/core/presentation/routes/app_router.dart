import 'package:auto_route/auto_route.dart';
import 'package:stock_market_test/account/presentation/account_screen.dart';

@MaterialAutoRouter(
  routes: [
    AutoRoute(
      initial: true,
      name: 'AccountRouter',
      path: 'AccountScreen',
      page: AccountScreen,
    ),
  ],
)
class $AppRouter {}
