import 'package:dartz/dartz.dart';

import '../../../core/failures/app_failure.dart';
import '../models/account.dart';

abstract class IAccountRepository {
  Future<Either<AppFailure, Account>> getAccount();
}
