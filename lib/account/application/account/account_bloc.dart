import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stock_market_test/account/domain/models/account.dart';
import 'package:stock_market_test/account/domain/repositories/i_account_repository.dart';
import 'package:stock_market_test/core/failures/app_failure.dart';

import '../../domain/models/company.dart';

part 'account_event.dart';
part 'account_state.dart';
part 'account_bloc.freezed.dart';

@injectable
class AccountBloc extends Bloc<AccountEvent, AccountState> {
  final IAccountRepository _accountRepository;
  AccountBloc(
    this._accountRepository,
  ) : super(const AccountState.initial()) {
    on<AccountEvent>(
      (event, emit) async {
        await event.map(
          companiesLoaded: (e) async {
            emit(const AccountState.loading());
            final result = await _accountRepository.getAccount();

            emit(
              result.fold(
                (failure) => AccountState.failure(failure),
                (account) => AccountState.success(account),
              ),
            );
          },
        );
      },
    );
  }
}
