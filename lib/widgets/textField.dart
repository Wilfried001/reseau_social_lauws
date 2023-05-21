import 'package:flutter/material.dart';
import 'package:reseau_social_droit/config/config.dart';

class CtextField extends StatelessWidget {
  final Color? backgroundColor;
  final String hint;
  final double raduis;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? textInputType;
  final TextEditingController? controller;
  final EdgeInsetsGeometry? contentPadding;
  const CtextField(
      {super.key,
      this.backgroundColor,
      required this.hint,
      this.raduis = 15.0,
      this.prefixIcon,
      this.textInputType,
      this.controller,
      this.suffixIcon,
      this.contentPadding});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Config.colors.textColor,
      keyboardType: textInputType,
      controller: controller,
      decoration: InputDecoration(
        contentPadding: contentPadding,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        filled: true,
        hintText: hint,
        hintStyle: TextStyle(
          fontFamily: 'EBGaramond',
          color: Config.colors.grayColor,
          fontSize: 16,
        ),
        fillColor: backgroundColor ?? Config.colors.backgroundTextField,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(raduis),
        ),
      ),
    );
  }
}
