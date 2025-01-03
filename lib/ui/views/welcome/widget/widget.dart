import 'package:carsaleauction/src/resubale_widget/custom_text.dart';
import 'package:carsaleauction/src/utils/colors/colors.dart';
import 'package:flutter/material.dart';

Widget auctionInfoRadio(
    {required ValueChanged<bool?>? onChanged,
    required bool value,
    required String title}) {
  return Flexible(
    child: CheckboxListTile(
      contentPadding: EdgeInsets.zero,
      title: CustomText.customSizedText(
        text: title,
        textAlign: TextAlign.justify,
        size: 12,
        minFontSize: 12,
        maxLine: 2,
        fontWeight: FontWeight.w600,
      ),
      side: WidgetStateBorderSide.resolveWith(
        (states) => const BorderSide(
          width: 1.0,
          color: Colors.white,
        ),
      ),
      fillColor: WidgetStateProperty.all(Colors.white),
      autofocus: false,
      activeColor: Colors.white,
      checkColor: AppColors.greenColor,
      checkboxScaleFactor: 1.5,
      selected: value,
      dense: true,
      value: value,
      onChanged: onChanged,
      controlAffinity: ListTileControlAffinity.leading,
    ),
  );
}
