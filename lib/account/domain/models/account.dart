import 'package:freezed_annotation/freezed_annotation.dart';

import 'company.dart';
part 'account.freezed.dart';

@freezed
class Account with _$Account {
  const Account._();
  const factory Account({
    required String currency,
    required String total,
    required String logo,
    required List<Company> companies,
    required List<String> currencies,
    required List<String> filters,
  }) = _Account;
  factory Account.empty() => const Account(
        currency: '',
        logo: '',
        total: '',
        companies: [],
        currencies: [],
        filters: [],
      );
}
