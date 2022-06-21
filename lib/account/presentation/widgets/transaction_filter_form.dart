import 'package:flutter/material.dart';

import '../../../core/presentation/app_texts.dart';
import '../../../core/presentation/themes/app_colors.dart';
import 'dropdown_custom_picker.dart';

class TransactionsFilterForm extends SliverPersistentHeaderDelegate {
  const TransactionsFilterForm({
    Key? key,
    required this.size,
    required this.currencies,
    required this.filters,
  });

  final Size size;
  final List<String> currencies;
  final List<String> filters;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.darkGrey,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Text(
              AppTexts.transactionHistory,
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          DropDownCustomPicker(items: currencies),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Expanded(
                child: DropDownCustomPicker(items: filters),
              ),
              const SizedBox(
                width: 8,
              ),
              Container(
                height: size.height * 0.075,
                width: size.height * 0.07,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.grey,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: const Icon(
                  Icons.calendar_month,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }

  @override
  double get maxExtent => size.height * 0.27;

  @override
  double get minExtent => size.height * 0.27;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
