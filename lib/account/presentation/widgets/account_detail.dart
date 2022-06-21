import 'package:flutter/material.dart';

import '../../../core/presentation/themes/app_colors.dart';
import '../../domain/models/account.dart';

class AccountDetail extends StatelessWidget {
  final Account account;
  const AccountDetail({
    Key? key,
    required this.size,
    required this.account,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.black,
      ),
      child: Column(
        children: [
          Flexible(child: Image.asset(account.logo)),
          const SizedBox(
            height: 24,
          ),
          Text(
            account.currency,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: AppColors.grey),
          ),
          const SizedBox(
            height: 8,
          ),
          Flexible(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Transform.translate(
                  offset: Offset(0, -5),
                  child: Text("\$",
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(color: AppColors.white)),
                ),
                Text(
                  account.total,
                  style: Theme.of(context)
                      .textTheme
                      .headline2
                      ?.copyWith(color: AppColors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
