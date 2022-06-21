import 'package:freezed_annotation/freezed_annotation.dart';
part 'account.freezed.dart';

@freezed
class Account with _$Account {
  const Account._();
  const factory Account({
    required String currency,
    required String total,
    required String logo,
  }) = _Account;
}
