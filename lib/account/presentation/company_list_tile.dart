import 'package:flutter/material.dart';

import '../../core/presentation/themes/app_colors.dart';
import '../domain/models/company.dart';

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
      height: size.height * 0.08,
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
          style: TextStyle(
            color: Colors.black45,
          ),
        ),
        trailing: Text(
          company.transactionString,
          style: TextStyle(
            color: Colors.black45,
          ),
        ),
      ),
    );
  }
}
