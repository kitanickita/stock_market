import 'package:flutter/material.dart';

import '../../../core/presentation/themes/app_colors.dart';
import '../../domain/models/company.dart';

class CompanyListTile extends StatelessWidget {
  final Size size;
  final Company company;
  const CompanyListTile({
    required this.company,
    required this.size,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.09,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: AppColors.white,
          child: Image.asset(company.logo),
        ),
        title: Text(
          company.name,
          style: Theme.of(context).textTheme.headline4,
        ),
        subtitle: Text(
          company.getTime,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        trailing: Text(
          company.transactionString,
          style: const TextStyle(
            color: AppColors.black,
          ),
        ),
      ),
    );
  }
}
