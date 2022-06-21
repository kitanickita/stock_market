import 'package:flutter/material.dart';

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
      icon: Icon(Icons.arrow_downward),
      decoration: InputDecoration(
        hintText: _category,
      ),
    );
  }
}
