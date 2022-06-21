import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:stock_market_test/core/presentation/app_icons.dart';
part 'company.freezed.dart';

@freezed
class Company with _$Company {
  const Company._();
  const factory Company({
    /// Company name.
    required String name,

    /// Company logo
    required String logo,

    /// Transaction  amount in currency.
    required double transaction,

    /// Date of transaction.
    required DateTime date,

    /// Currency indicator for showing in the company transaction.
    required String currency,
  }) = _Company;

  /// Gets formatted time represented in H:m format.
  String get getTime => DateFormat('H:m').format(date);

  String get transactionString =>
      "${transaction < 0 ? '-' : ''} $currency ${transaction.abs().toString()}";
}

final fakeCompanies = [
  Company(
      name: 'DIDI',
      logo: AppIcons.ddLogo,
      transaction: -665,
      date: DateTime.now().add(
        Duration(days: -1),
      ),
      currency: '\$'),
  Company(
      name: 'Darren Hodgkin',
      logo: AppIcons.darenLogo,
      transaction: 432,
      date: DateTime.now(),
      currency: '\$'),
  Company(
      name: 'McDonalds',
      logo: AppIcons.mcDonaldsLogo,
      transaction: -50,
      date: DateTime.now().add(
        Duration(days: 1),
      ),
      currency: '\$'),
  Company(
      name: 'Starbucks',
      logo: AppIcons.kfcLogo,
      transaction: -50,
      date: DateTime.now().add(
        Duration(days: 1),
      ),
      currency: '\$'),
  Company(
      name: 'Tesla',
      logo: AppIcons.teslaLogo,
      transaction: -50,
      date: DateTime.now(),
      currency: '\$'),
];
