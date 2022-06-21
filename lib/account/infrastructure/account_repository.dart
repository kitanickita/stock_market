import 'package:injectable/injectable.dart';
import 'package:stock_market_test/account/domain/models/account.dart';
import 'package:dartz/dartz.dart';
import 'package:stock_market_test/account/domain/repositories/i_account_repository.dart';
import 'package:stock_market_test/core/failures/app_failure.dart';

import 'fake_data.dart';

@LazySingleton(as: IAccountRepository)
class AccountRepository implements IAccountRepository {
  @override
  Future<Either<AppFailure, Account>> getAccount() async {
    await Future.delayed(const Duration(seconds: 1));
    return right(fakeAccount);
  }
}
