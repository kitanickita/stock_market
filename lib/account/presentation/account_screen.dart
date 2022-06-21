import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:stock_market_test/account/domain/models/company.dart';
import 'package:stock_market_test/account/presentation/dropdown_custom_picker.dart';
import 'package:stock_market_test/core/presentation/app_texts.dart';
import 'package:grouped_list/grouped_list.dart';

import '../../core/presentation/themes/app_colors.dart';
import 'account_detail.dart';
import 'company_list_tile.dart';
import 'day_list_tile.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    var _currencies = [
      "USD Dollar",
      "EUR",
      "RUB",
    ];
    var _filters = [
      "All",
      "Some",
      "Others",
    ];
    String _category = _currencies[0];
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(MdiIcons.arrowLeft),
        actions: const [
          Icon(MdiIcons.shapeSquareRoundedPlus),
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        AccountDetail(size: size),
        TransactionsFilterForm(
          size: size,
          currencies: _currencies,
          filters: _filters,
        ),
        Expanded(
          child: GroupedListView<Company, DateTime>(
            elements: fakeCompanies,
            groupBy: (element) => DateTime(
              element.date.year,
              element.date.month,
              element.date.day,
            ),
            itemBuilder: (context, item) => CompanyListTile(
              company: item,
              size: size,
            ),
            groupSeparatorBuilder: (value) => DayListTile(
              date: value,
              size: size,
            ),
          ),
        ),
      ]),
    );
  }
}

class TransactionsFilterForm extends StatelessWidget {
  const TransactionsFilterForm({
    Key? key,
    required this.size,
    required List<String> currencies,
    required List<String> filters,
  })  : _currencies = currencies,
        _filters = filters,
        super(key: key);

  final Size size;
  final List<String> _currencies;
  final List<String> _filters;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.24,
      decoration: const BoxDecoration(
        color: AppColors.darkGrey,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            AppTexts.transactionHistory,
            style: Theme.of(context).textTheme.headline3,
          ),
          const SizedBox(
            height: 4,
          ),
          DropDownCustomPicker(items: _currencies),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Expanded(
                child: DropDownCustomPicker(items: _filters),
              ),
              const SizedBox(
                width: 8,
              ),
              Container(
                height: size.height * 0.07,
                width: size.height * 0.07,
                child: const Icon(
                  Icons.calendar_month,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.grey,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
