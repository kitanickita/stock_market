import 'package:flutter/material.dart';
import 'dart:math' as math;

class DropDownCustomPicker extends StatefulWidget {
  final List<String> items;
  const DropDownCustomPicker({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  State<DropDownCustomPicker> createState() => _DropDownCustomPickerState();
}

class _DropDownCustomPickerState extends State<DropDownCustomPicker> {
  @override
  Widget build(BuildContext context) {
    String _category = widget.items[0];
    return DropdownButtonFormField<String>(
      style: Theme.of(context).textTheme.headline5,
      items: widget.items
          .map(
            (currency) => DropdownMenuItem(
              value: currency,
              child: Text(currency),
            ),
          )
          .toList(),
      onChanged: (category) {
        setState(() {
          _category = category.toString();
        });
      },
      value: _category,
      icon: Transform.rotate(
        angle: -math.pi / 2,
        child: const Icon(
          Icons.arrow_back_ios_new_sharp,
          size: 18,
        ),
      ),
      decoration: InputDecoration(),
    );
  }
}
