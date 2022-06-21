import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:stock_market_test/account/domain/models/account.dart';
import 'package:stock_market_test/account/domain/models/company.dart';
import 'package:stock_market_test/account/presentation/widgets/transaction_filter_form.dart';
import 'package:stock_market_test/core/failures/app_failure.dart';
import 'package:stock_market_test/core/presentation/app_texts.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:stock_market_test/injection.dart';

import '../application/account/account_bloc.dart';
import 'widgets/account_detail.dart';
import 'widgets/company_list_tile.dart';
import 'widgets/day_list_tile.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<AccountBloc>()..add(const AccountEvent.companiesLoaded()),
      child: BlocBuilder<AccountBloc, AccountState>(
        builder: (context, state) {
          return state.when(
            initial: () => const LoadingScreen(),
            loading: () => const LoadingScreen(),
            success: (account) => AccountScreenContent(account: account),
            failure: (failure) => FailureScreen(failure: failure),
          );
        },
      ),
    );
  }
}

class FailureScreen extends StatelessWidget {
  final AppFailure failure;
  const FailureScreen({Key? key, required this.failure}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(failure.message),
      ),
    );
  }
}

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class AccountScreenContent extends StatelessWidget {
  final Account account;
  const AccountScreenContent({Key? key, required this.account})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(MdiIcons.arrowLeft),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(MdiIcons.shapeSquareRoundedPlus),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async => context
            .read<AccountBloc>()
            .add(const AccountEvent.companiesLoaded()),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              // leading: const Icon(MdiIcons.arrowLeft),
              expandedHeight: size.height * 0.3,
              floating: true,
              pinned: false,
              snap: true,
              flexibleSpace: AccountDetail(
                size: size,
                account: account,
              ),
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: TransactionsFilterForm(
                size: size,
                currencies: account.currencies,
                filters: account.filters,
              ),
            ),
            SliverFillRemaining(
              child: Expanded(
                child: GroupedListView<Company, DateTime>(
                  physics: const NeverScrollableScrollPhysics(),
                  elements: account.companies,
                  groupBy: (element) => DateTime(
                    element.date.year,
                    element.date.month,
                    element.date.day,
                  ),
                  itemBuilder: (context, item) => CompanyListTile(
                    company: item,
                    size: size,
                  ),
                  separator: const Divider(),
                  groupSeparatorBuilder: (value) => DayListTile(
                    date: value,
                    size: size,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
