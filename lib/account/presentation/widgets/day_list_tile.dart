import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../core/presentation/themes/app_colors.dart';
import '../../../core/presentation/themes/app_colors.dart';

class DayListTile extends StatelessWidget {
  final DateTime date;
  final Size size;
  const DayListTile({
    required this.size,
    required this.date,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.08,
      color: Colors.grey,
      child: ListTile(
          title: Text(
        getFormateDate(date),
        style: const TextStyle(
          color: AppColors.black,
        ),
      )),
    );
  }

  _calculateDifference(DateTime date) {
    DateTime now = DateTime.now();
    return DateTime(date.year, date.month, date.day)
        .difference(DateTime(now.year, now.month, now.day))
        .inDays;
  }

  String getFormateDate(DateTime date) {
    if (_calculateDifference(date) == -1) {
      return 'Yesterday';
    } else if (_calculateDifference(date) == 0) {
      return ('Today');
    } else {
      return DateFormat('E, MMM d').format(date);
    }
  }
}
