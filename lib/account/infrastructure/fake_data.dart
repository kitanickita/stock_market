import 'package:stock_market_test/account/domain/models/account.dart';

import '../../core/presentation/app_icons.dart';
import '../domain/models/company.dart';

final fakeAccount = Account(
  currency: 'USD Account',
  total: '1800,000.99',
  logo: AppIcons.usFlag,
  companies: _fakeCompanies,
  currencies: _currencies,
  filters: _filters,
);

const _currencies = [
  "USD Dollar",
  "EUR",
  "RUB",
];
const _filters = [
  "All",
  "Some",
  "Others",
];

final _fakeCompanies = [
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
    currency: '\$',
  ),
  Company(
    name: 'Tesla',
    logo: AppIcons.teslaLogo,
    transaction: -50,
    date: DateTime.now(),
    currency: '\$',
  ),
  Company(
    name: 'Tesla',
    logo: AppIcons.teslaLogo,
    transaction: -50,
    date: DateTime.now(),
    currency: '\$',
  ),
];
