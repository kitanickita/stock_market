import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../presentation/routes/app_router.gr.dart';

final autoRouterProvider = Provider((ref) => AppRouter());
