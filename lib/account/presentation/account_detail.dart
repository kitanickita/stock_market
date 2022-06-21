import 'package:flutter/material.dart';

import '../../core/presentation/app_icons.dart';
import '../../core/presentation/themes/app_colors.dart';

class AccountDetail extends StatelessWidget {
  const AccountDetail({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.30,
      decoration: const BoxDecoration(
        color: AppColors.black,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              SizedBox(
                height: 70,
                child: Image.asset(AppIcons.usFlag),
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                'USD Account',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    ?.copyWith(color: AppColors.grey),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
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
                    '180,000.96',
                    style: Theme.of(context)
                        .textTheme
                        .headline2
                        ?.copyWith(color: AppColors.white),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
