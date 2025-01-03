import 'package:carsaleauction/src/resubale_widget/text_style.dart';
import 'package:carsaleauction/src/utils/colors/colors.dart';
import 'package:flutter/material.dart';

class AppTextfield {
  static Widget squareTextField(
      {required controller,
      required String hintText,
      void Function(String)? onChanged,
      void Function()? onTap,
      TextInputType? keyBoardType,
      BorderRadius? borderRadius,
      String? Function(String?)? validator,
      Color? borderColor,
      TextStyle? hintStyle,
      Widget? suffixIcon,
      bool? autocorrect,
      bool? fillColor,
      int? maxLines,
      obscureText = false,
      Icon? prefixIcon,
      EdgeInsetsGeometry? contentPadding,
      Color? hintColor,
      FontWeight? hintWeight,
      TextInputAction? textInputAction,
      bool? readOnly,
      BorderStyle? borderStyle,
      autovalidateMode}) {
    return TextFormField(
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      autovalidateMode: autovalidateMode,
      style: TextStyle(color: AppColors.white),
      validator: validator,
      obscureText: obscureText!,
      onChanged: onChanged,
      onTap: onTap,
      readOnly: readOnly ?? false,
      keyboardType: keyBoardType,
      cursorColor: AppColors.blackColor,
      maxLines: maxLines ?? 1,
      autocorrect: autocorrect ?? false,
      textInputAction: TextInputAction.next,
      controller: controller,
      decoration: InputDecoration(
        contentPadding: contentPadding,
        prefixIcon: prefixIcon,
        fillColor: AppColors.greyColor.withOpacity(0.3),
        filled: fillColor ?? false,
        suffixIcon: suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor ?? AppColors.greyColor.withOpacity(0.0),
            style: borderStyle ?? BorderStyle.solid,
          ),
          borderRadius: borderRadius ?? BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor ?? AppColors.greyColor.withOpacity(0.0),
            style: borderStyle ?? BorderStyle.solid,
          ),
          borderRadius: borderRadius ?? BorderRadius.circular(10.0),
        ),
        hintText: hintText,
        hintStyle: AppTextStyle.customTextStyle(
          color: hintColor ?? AppColors.greyColor,
          fontWeight: hintWeight ?? FontWeight.normal,
          size: 14,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor ?? AppColors.greyColor,
            style: borderStyle ?? BorderStyle.solid,
          ),
          borderRadius: borderRadius ?? BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
