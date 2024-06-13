import 'package:custom_filled_button_package/custom_filled_button_package.dart';
import 'package:flutter/material.dart';

class CheckboxWidget extends StatelessWidget {
  final bool isChecked;
  final ValueChanged<bool?> onChanged;
  final String text;
  final TextStyle? textStyle;

  final IconData? filledButtonIcon;

  final String? filledButtonText;

  ///THis Checkbox comes with TEXT widget
  const CheckboxWidget({
    super.key,

    ///isChecked inu some value assign chy-nm
    required this.isChecked,
    required this.onChanged,
    required this.text,
    this.textStyle,
    this.filledButtonIcon,
    this.filledButtonText,
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
        ),
        CustomFilledButton(
          icon: filledButtonIcon,
          buttonText: filledButtonText,
        )
        // if (filledButtonText != null) ...[
        //   CustomFilledButton(
        //     icon: filledButtonIcon,
        //     buttonText: filledButtonText,
        //   )
        // ]
      ],
    );
  }
}
