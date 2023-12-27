import 'package:books_gallery/core/constant/appcolors.dart';
import 'package:flutter/material.dart';

class RegisterTextfield extends StatelessWidget {
  final String hintText;
  final bool? isPassword;
  final Icon prefixIcon;
  final TextEditingController controller;
  const RegisterTextfield({
    super.key,
    required this.hintText,
    this.isPassword,
    required this.prefixIcon,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: AppColors.primaryBlue,
      obscureText: isPassword == null ? false : isPassword!,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        prefixIconColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.focused)) {
            return AppColors.primaryBlue;
          }
          return AppColors.secondaryBlue;
        }),
        hintText: hintText,
        focusColor: AppColors.secondaryBlue,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: AppColors.primaryBlue, width: 1)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: AppColors.secondaryBlue, width: 2)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
