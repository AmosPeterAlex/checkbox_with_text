import 'package:flutter/material.dart';

class CheckboxWidget extends StatelessWidget {
  final bool isChecked;
  final ValueChanged<bool?> onChanged;
  final String text;
  final TextStyle? textStyle;
///THis Checkbox comes with TEXT widget
  const CheckboxWidget({
    super.key,
    required this.isChecked,
    required this.onChanged,
    required this.text,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: onChanged,
          side: WidgetStateBorderSide.resolveWith(
            (states) {
              return const BorderSide(color: Color(0XFFBDBDBD), width: .5);
            },
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          ),
        ),
        Text(
          text,
          style: textStyle,
        )
      ],
    );
  }
}
